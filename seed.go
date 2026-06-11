package main

import (
	"context"
	"fmt"
	"strconv"
	"strings"
	"time"

	"go-seed/ent"
	"go-seed/ent/academicyear"
	"go-seed/ent/class"
	"go-seed/ent/department"
	"go-seed/ent/employee"
	"go-seed/ent/event"
	"go-seed/ent/feepayment"
	"go-seed/ent/feestructure"
	"go-seed/ent/student"
	"go-seed/ent/studentattendance"
	"go-seed/ent/subject"
	"go-seed/ent/task"
	"go-seed/ent/teacher"
	"go-seed/ent/teacherattendance"
	"go-seed/ent/user"

	"entgo.io/ent/dialect/sql"
	"github.com/google/uuid"
)

// helpers for pointer conversion

func nilIfEmpty(s string) *string {
	s = strings.TrimSpace(s)
	if s == "" || s == "N/A" {
		return nil
	}
	return &s
}

func nilIfZero(i int) *int {
	if i <= 0 {
		return nil
	}
	return &i
}

func nilIfFloatZero(f float64) *float64 {
	if f <= 0 {
		return nil
	}
	return &f
}

// ─── 1. DEPARTMENTS ───────────────────────────────────────────────────────────

func seedDepartments(ctx context.Context, client *ent.Client) (map[string]int, error) {
	fmt.Println("→ Seeding departments…")
	var raw []JSONDepartment
	if err := loadJson("department.json", &raw); err != nil {
		return nil, err
	}

	seen := make(map[string]bool)
	created := make(map[string]int)

	for _, d := range raw {
		name := strings.ToLower(strings.TrimSpace(d.DepartmentName))
		if name == "" || seen[name] {
			continue
		}
		seen[name] = true

		capitalized := strings.Title(name)
		code := strings.ToUpper(name)
		if len(code) > 6 {
			code = code[:6]
		}
		description := fmt.Sprintf("%s Department", capitalized)

		deptID, err := client.Department.
			Create().
			SetName(capitalized).
			SetNillableCode(nilIfEmpty(code)).
			SetNillableDescription(nilIfEmpty(description)).
			OnConflict(sql.ConflictColumns(department.FieldName)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, fmt.Errorf("failed to upsert department %s: %w", capitalized, err)
		}
		created[name] = deptID
	}

	fmt.Printf("   ✓ %d departments\n", len(created))
	return created, nil
}

// ─── 2. SUBJECTS ──────────────────────────────────────────────────────────────

func seedSubjects(ctx context.Context, client *ent.Client) (map[string]int, error) {
	fmt.Println("→ Seeding subjects…")
	var teachers []JSONTeacher
	if err := loadJson("teachers.json", &teachers); err != nil {
		return nil, err
	}

	seen := make(map[string]bool)
	created := make(map[string]int)

	for _, t := range teachers {
		subjectName := strings.TrimSpace(t.SubjectSpecialization)
		if subjectName == "" || seen[strings.ToLower(subjectName)] {
			continue
		}
		seen[strings.ToLower(subjectName)] = true

		code := strings.ToUpper(strings.ReplaceAll(subjectName, " ", ""))
		if len(code) > 10 {
			code = code[:10]
		}
		description := fmt.Sprintf("%s subject", subjectName)

		subID, err := client.Subject.
			Create().
			SetName(subjectName).
			SetNillableCode(nilIfEmpty(code)).
			SetNillableDescription(nilIfEmpty(description)).
			OnConflict(sql.ConflictColumns(subject.FieldCode)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, fmt.Errorf("failed to upsert subject %s: %w", subjectName, err)
		}
		created[subjectName] = subID
	}

	fmt.Printf("   ✓ %d subjects\n", len(created))
	return created, nil
}

// ─── 3. ACADEMIC YEARS ────────────────────────────────────────────────────────

func seedAcademicYears(ctx context.Context, client *ent.Client) (map[string]int, error) {
	fmt.Println("→ Seeding academic_years…")
	var classes []JSONClass
	if err := loadJson("class-list.json", &classes); err != nil {
		return nil, err
	}

	seenSemesters := make(map[string]bool)
	created := make(map[string]int)

	for _, c := range classes {
		sem := strings.TrimSpace(c.Semester)
		if sem == "" || seenSemesters[sem] {
			continue
		}
		seenSemesters[sem] = true

		startDate := toDate(c.StartDate)
		endDate := toDate(c.EndDate)

		if startDate == nil {
			t := time.Date(2024, time.September, 1, 0, 0, 0, 0, time.UTC)
			startDate = &t
		}
		if endDate == nil {
			t := time.Date(2025, time.June, 30, 0, 0, 0, 0, time.UTC)
			endDate = &t
		}

		ayID, err := client.AcademicYear.
			Create().
			SetLabel(sem).
			SetStartDate(*startDate).
			SetEndDate(*endDate).
			SetIsCurrent(true).
			OnConflict(sql.ConflictColumns(academicyear.FieldLabel)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, fmt.Errorf("failed to upsert academic year %s: %w", sem, err)
		}
		created[sem] = ayID
	}

	fmt.Printf("   ✓ %d academic year(s)\n", len(created))
	return created, nil
}

// ─── 4. TEACHERS (users + teachers) ──────────────────────────────────────────

func seedTeachers(ctx context.Context, client *ent.Client, deptMap map[string]int, subjectMap map[string]int) (map[string]uuid.UUID, []uuid.UUID, error) {
	fmt.Println("→ Seeding teachers (users + teachers)…")
	var raw []JSONTeacher
	if err := loadJson("teachers.json", &raw); err != nil {
		return nil, nil, err
	}

	passwordHash, err := defaultHash()
	if err != nil {
		return nil, nil, err
	}

	idToUuid := make(map[string]uuid.UUID)
	var userUuids []uuid.UUID

	for i, t := range raw {
		first, last := splitName(t.Name)
		username := makeUsername(t.Name, i+1)

		var email string
		if strings.Contains(t.Email, "@") {
			email = fmt.Sprintf("teacher%d_%s", i+1, t.Email)
		} else {
			email = fmt.Sprintf("teacher%d@school.dev", i+1)
		}

		isActive := strings.ToLower(t.Status) == "active"

		// 1. Upsert User
		uID, err := client.User.
			Create().
			SetUsername(username).
			SetEmail(email).
			SetPasswordHash(passwordHash).
			SetRole(user.RoleTeacher).
			SetNillableAvatarURL(nilIfEmpty(t.Img)).
			SetIsActive(isActive).
			OnConflict(sql.ConflictColumns(user.FieldUsername)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, nil, fmt.Errorf("failed to upsert user for teacher %s: %w", t.Name, err)
		}
		userUuids = append(userUuids, uID)

		// 2. Upsert Teacher Profile
		deptKey := strings.ToLower(strings.TrimSpace(t.Department))
		var deptIDVal *int
		if id, exists := deptMap[deptKey]; exists {
			deptIDVal = &id
		}

		dob := toDate(t.Birthdate)
		joiningDate := toDate(t.HireDate)
		gender := toGender(t.Gender)

		teacherID, err := client.Teacher.
			Create().
			SetUserID(uID).
			SetFirstName(first).
			SetLastName(last).
			SetGender(teacher.Gender(gender)).
			SetNillableDateOfBirth(dob).
			SetNillablePhone(nilIfEmpty(t.Mobile)).
			SetNillableAddress(nilIfEmpty(t.Address)).
			SetNillableDepartmentID(deptIDVal).
			SetNillableQualification(nilIfEmpty(t.Degree)).
			SetNillableJoiningDate(joiningDate).
			SetNillableAvatarURL(nilIfEmpty(t.Img)).
			OnConflict(sql.ConflictColumns(teacher.FieldUserID)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, nil, fmt.Errorf("failed to upsert teacher profile %s: %w", t.Name, err)
		}

		// 3. Link teacher ↔ subject
		if subjectID, exists := subjectMap[t.SubjectSpecialization]; exists {
			err = client.Teacher.
				UpdateOneID(teacherID).
				AddSubjectIDs(subjectID).
				Exec(ctx)
			if err != nil {
				return nil, nil, fmt.Errorf("failed to link teacher %s to subject %s: %w", t.Name, t.SubjectSpecialization, err)
			}
		}

		idToUuid[t.ID] = teacherID
	}

	fmt.Printf("   ✓ %d teachers + users\n", len(raw))
	return idToUuid, userUuids, nil
}

// ─── 5. STUDENTS (users + students) ──────────────────────────────────────────

func seedStudents(ctx context.Context, client *ent.Client) (map[string]uuid.UUID, error) {
	fmt.Println("→ Seeding students (users + students)…")
	var raw []JSONStudent
	if err := loadJson("students.json", &raw); err != nil {
		return nil, err
	}

	passwordHash, err := defaultHash()
	if err != nil {
		return nil, err
	}

	rollToUuid := make(map[string]uuid.UUID)

	for i, s := range raw {
		first, last := splitName(s.Name)
		username := makeUsername(s.Name+"_stu", i+1)

		var email string
		if strings.Contains(s.Email, "@") {
			email = fmt.Sprintf("student%d_%s", i+1, s.Email)
		} else {
			email = fmt.Sprintf("student%d@school.dev", i+1)
		}

		isActive := strings.ToLower(s.Status) == "active"

		// 1. Upsert User
		uID, err := client.User.
			Create().
			SetUsername(username).
			SetEmail(email).
			SetPasswordHash(passwordHash).
			SetRole(user.RoleStudent).
			SetNillableAvatarURL(nilIfEmpty(s.Img)).
			SetIsActive(isActive).
			OnConflict(sql.ConflictColumns(user.FieldUsername)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, fmt.Errorf("failed to upsert user for student %s: %w", s.Name, err)
		}

		var rollNo string
		switch v := s.RollNo.(type) {
		case float64:
			rollNo = strconv.FormatFloat(v, 'f', 0, 64)
		case string:
			rollNo = strings.TrimSpace(v)
		default:
			rollNo = fmt.Sprintf("%v", v)
		}

		dob := toDate(s.DateOfBirth)
		joiningDate := toDate(s.EnrollmentDate)
		if joiningDate == nil {
			now := time.Now()
			joiningDate = &now
		}
		gender := toGender(s.Gender)

		// 2. Upsert Student Profile
		studentID, err := client.Student.
			Create().
			SetUserID(uID).
			SetRollNumber(rollNo).
			SetFirstName(first).
			SetLastName(last).
			SetGender(student.Gender(gender)).
			SetNillableDateOfBirth(dob).
			SetNillablePhone(nilIfEmpty(s.Mobile)).
			SetNillableParentPhone(nilIfEmpty(s.ParentGuardianMobile)).
			SetNillableAddress(nilIfEmpty(s.Address)).
			SetJoiningDate(*joiningDate).
			SetNillableAvatarURL(nilIfEmpty(s.Img)).
			OnConflict(sql.ConflictColumns(student.FieldRollNumber)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, fmt.Errorf("failed to upsert student profile %s: %w", s.Name, err)
		}

		rollToUuid[rollNo] = studentID
	}

	fmt.Printf("   ✓ %d students + users\n", len(raw))
	return rollToUuid, nil
}

// ─── 6. EMPLOYEES (users + employees) ────────────────────────────────────────

func seedEmployees(ctx context.Context, client *ent.Client) error {
	fmt.Println("→ Seeding employees/staff (users + employees)…")
	var raw []JSONStaff
	if err := loadJson("staff.json", &raw); err != nil {
		return err
	}

	passwordHash, err := defaultHash()
	if err != nil {
		return err
	}

	for i, s := range raw {
		first, last := splitName(s.Name)
		username := makeUsername(s.Name+"_emp", i+1)

		var email string
		if strings.Contains(s.Email, "@") {
			email = fmt.Sprintf("staff%d_%s", i+1, s.Email)
		} else {
			email = fmt.Sprintf("staff%d@school.dev", i+1)
		}

		salaryNum := parseMoney(s.Salary)
		var salaryVal *float64
		if salaryNum > 0 {
			salaryVal = &salaryNum
		}

		isActive := strings.ToLower(s.Status) == "active"

		// 1. Upsert User
		uID, err := client.User.
			Create().
			SetUsername(username).
			SetEmail(email).
			SetPasswordHash(passwordHash).
			SetRole(user.RoleEmployee).
			SetNillableAvatarURL(nilIfEmpty(s.Img)).
			SetIsActive(isActive).
			OnConflict(sql.ConflictColumns(user.FieldUsername)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return fmt.Errorf("failed to upsert user for staff %s: %w", s.Name, err)
		}

		dob := toDate(s.DateOfBirth)
		joiningDate := toDate(s.JoiningDate)
		gender := toGender(s.Gender)

		// 2. Upsert Employee Profile
		err = client.Employee.
			Create().
			SetUserID(uID).
			SetFirstName(first).
			SetLastName(last).
			SetGender(employee.Gender(gender)).
			SetNillableDateOfBirth(dob).
			SetNillablePhone(nilIfEmpty(s.Mobile)).
			SetNillableAddress(nilIfEmpty(s.Address)).
			SetNillableJobTitle(nilIfEmpty(s.Role)).
			SetNillableJoiningDate(joiningDate).
			SetNillableSalary(salaryVal).
			SetNillableAvatarURL(nilIfEmpty(s.Img)).
			SetIsActive(isActive).
			OnConflict(sql.ConflictColumns(employee.FieldUserID)).
			UpdateNewValues().
			Exec(ctx)
		if err != nil {
			return fmt.Errorf("failed to upsert employee profile %s: %w", s.Name, err)
		}
	}

	fmt.Printf("   ✓ %d employees + users\n", len(raw))
	return nil
}

// ─── 7. CLASSES ───────────────────────────────────────────────────────────────

func seedClasses(ctx context.Context, client *ent.Client, academicYearMap map[string]int) (map[int]int, map[string]int, error) {
	fmt.Println("→ Seeding classes…")
	var raw []JSONClass
	if err := loadJson("class-list.json", &raw); err != nil {
		return nil, nil, err
	}

	nameCounter := make(map[string]int)
	letters := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	jsonIdToDbId := make(map[int]int)
	nameToDbId := make(map[string]int)

	for _, c := range raw {
		baseName := strings.TrimSpace(c.ClassName)
		count := nameCounter[baseName]
		var seedName string

		if count == 0 {
			seedName = baseName
		} else {
			letterIdx := (count - 1) % len(letters)
			seedName = fmt.Sprintf("%s-%c", baseName, letters[letterIdx])
		}
		nameCounter[baseName] = count + 1

		ayID, exists := academicYearMap[c.Semester]
		if !exists {
			for _, id := range academicYearMap {
				ayID = id
				break
			}
		}

		classObjID, err := client.Class.
			Create().
			SetName(seedName).
			SetAcademicYearID(ayID).
			SetNillableCapacity(nilIfZero(c.ClassCapacity)).
			OnConflict(sql.ConflictColumns(class.FieldName, class.FieldAcademicYearID)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			return nil, nil, fmt.Errorf("failed to upsert class %s: %w", seedName, err)
		}

		jsonIdToDbId[c.ClassID] = classObjID
		if _, exists := nameToDbId[baseName]; !exists {
			nameToDbId[baseName] = classObjID
		}
	}

	fmt.Printf("   ✓ %d classes\n", len(raw))
	return jsonIdToDbId, nameToDbId, nil
}

// ─── 8. TASKS ─────────────────────────────────────────────────────────────────

func seedTasks(ctx context.Context, client *ent.Client, userUuids []uuid.UUID) error {
	fmt.Println("→ Seeding tasks…")
	var raw []JSONTask
	if err := loadJson("task.json", &raw); err != nil {
		return err
	}

	var firstUserID uuid.UUID
	firstUser, err := client.User.Query().Order(ent.Asc(user.FieldCreatedAt)).First(ctx)
	if err == nil {
		firstUserID = firstUser.ID
	} else {
		if len(userUuids) > 0 {
			firstUserID = userUuids[0]
		} else {
			return fmt.Errorf("no user ID available to assign tasks: %w", err)
		}
	}

	for _, t := range raw {
		status := "Pending"
		if t.Done {
			status = "Completed"
		}

		priority := "Normal"
		pRaw := strings.Title(strings.ToLower(strings.TrimSpace(t.Priority)))
		if pRaw == "Low" || pRaw == "Normal" || pRaw == "High" {
			priority = pRaw
		}

		dueDate := toDate(t.DueDate)

		err = client.Task.
			Create().
			SetTitle(t.Title).
			SetNillableDetails(nilIfEmpty(t.Note)).
			SetStatus(task.Status(status)).
			SetPriority(task.Priority(priority)).
			SetNillableDueDate(dueDate).
			SetAssignedTo(firstUserID).
			SetAssignedBy(firstUserID).
			Exec(ctx)
		if err != nil {
			return fmt.Errorf("failed to insert task %s: %w", t.Title, err)
		}
	}

	fmt.Printf("   ✓ %d tasks\n", len(raw))
	return nil
}

// ─── 9. EVENTS (holiday.json + holidays.json) ─────────────────────────────────

func seedEvents(ctx context.Context, client *ent.Client) error {
	fmt.Println("→ Seeding events…")
	count := 0

	var holidays []JSONHoliday
	if err := loadJson("holiday.json", &holidays); err == nil {
		for _, h := range holidays {
			eventDate := toDate(h.StartDate)
			if eventDate == nil {
				t := time.Now()
				eventDate = &t
			}
			status := h.Status
			if status == "" {
				status = "Upcoming"
			}

			err := client.Event.
				Create().
				SetTitle(h.Title).
				SetEventType(event.EventTypeHoliday).
				SetNillableDescription(nilIfEmpty(h.Description)).
				SetEventDate(*eventDate).
				SetIsAllDay(true).
				SetStatus(status).
				Exec(ctx)
			if err != nil {
				return fmt.Errorf("failed to insert event %s: %w", h.Title, err)
			}
			count++
		}
	}

	var schoolHolidays []JSONSchoolHoliday
	if err := loadJson("holidays.json", &schoolHolidays); err == nil {
		for _, h := range schoolHolidays {
			eventDate := toDate(h.Date)
			if eventDate == nil {
				t := time.Now()
				eventDate = &t
			}
			status := "Upcoming"
			if h.ApprovalStatus != "Approved" {
				status = "Cancelled"
			}

			err := client.Event.
				Create().
				SetTitle(h.HolidayName).
				SetEventType(event.EventTypeHoliday).
				SetNillableDescription(nilIfEmpty(h.Details)).
				SetEventDate(*eventDate).
				SetIsAllDay(true).
				SetStatus(status).
				Exec(ctx)
			if err != nil {
				return fmt.Errorf("failed to insert school event %s: %w", h.HolidayName, err)
			}
			count++
		}
	}

	fmt.Printf("   ✓ %d events\n", count)
	return nil
}

// ─── 10. TEACHER ATTENDANCE ───────────────────────────────────────────────────

func seedTeacherAttendance(ctx context.Context, client *ent.Client, teacherUuidMap map[string]uuid.UUID) error {
	fmt.Println("→ Seeding teacher_attendance…")
	var raw []JSONStaffAttendance
	if err := loadJson("staff-attendance.json", &raw); err != nil {
		return err
	}

	var teacherUuids []uuid.UUID
	for _, uuidVal := range teacherUuidMap {
		teacherUuids = append(teacherUuids, uuidVal)
	}

	if len(teacherUuids) == 0 {
		fmt.Println("   ⚠ No teachers in DB — skipping teacher_attendance")
		return nil
	}

	count := 0
	for i, row := range raw {
		teacherID := teacherUuids[i%len(teacherUuids)]
		date := toDate(row.Date)
		if date == nil {
			continue
		}

		statusRaw := strings.ToLower(strings.TrimSpace(row.AttendanceStatus))
		status := "excused"
		switch statusRaw {
		case "present":
			status = "present"
		case "absent":
			status = "absent"
		case "late":
			status = "late"
		}

		err := client.TeacherAttendance.
			Create().
			SetTeacherID(teacherID).
			SetDate(*date).
			SetStatus(teacherattendance.Status(status)).
			SetNillableRemarks(nilIfEmpty(row.Remarks)).
			OnConflict(sql.ConflictColumns(teacherattendance.FieldTeacherID, teacherattendance.FieldDate)).
			UpdateNewValues().
			Exec(ctx)
		if err != nil {
			return fmt.Errorf("failed to insert teacher attendance record: %w", err)
		}
		count++
	}

	fmt.Printf("   ✓ %d teacher attendance records\n", count)
	return nil
}

// ─── 11. STUDENT ATTENDANCE ───────────────────────────────────────────────────

func seedStudentAttendance(ctx context.Context, client *ent.Client, rollToUuid map[string]uuid.UUID, nameToClassId map[string]int, subjectMap map[string]int) error {
	fmt.Println("→ Seeding student_attendance…")
	var raw []JSONStudentAttendance
	if err := loadJson("student-attendance.json", &raw); err != nil {
		return err
	}

	var dbClassIDs []int
	classesObjs, err := client.Class.Query().Order(ent.Asc(class.FieldID)).Limit(6).All(ctx)
	if err == nil {
		for _, cObj := range classesObjs {
			dbClassIDs = append(dbClassIDs, cObj.ID)
		}
	}

	classLetterMap := make(map[string]int)
	classesLetters := []string{"Class A", "Class B", "Class C", "Class D", "Class E", "Class F"}
	for i, letter := range classesLetters {
		if i < len(dbClassIDs) {
			classLetterMap[letter] = dbClassIDs[i]
		} else if len(dbClassIDs) > 0 {
			classLetterMap[letter] = dbClassIDs[0]
		}
	}

	mathSubjectID, mathExists := subjectMap["Mathematics"]
	if !mathExists {
		for _, id := range subjectMap {
			mathSubjectID = id
			break
		}
	}

	count := 0
	for _, row := range raw {
		var rollNo string
		switch v := row.RollNo.(type) {
		case float64:
			rollNo = strconv.FormatFloat(v, 'f', 0, 64)
		case string:
			rollNo = strings.TrimSpace(v)
		default:
			rollNo = fmt.Sprintf("%v", v)
		}

		studentID, exists := rollToUuid[rollNo]
		if !exists {
			continue
		}

		classID, classExists := classLetterMap[row.Class]
		if !classExists && len(dbClassIDs) > 0 {
			classID = dbClassIDs[0]
		}
		if classID == 0 {
			continue
		}

		date := toDate(row.Date)
		if date == nil {
			continue
		}

		statusRaw := strings.ToLower(strings.TrimSpace(row.Status))
		status := "excused"
		switch statusRaw {
		case "present":
			status = "present"
		case "absent":
			status = "absent"
		case "late":
			status = "late"
		}

		builder := client.StudentAttendance.
			Create().
			SetStudentID(studentID).
			SetClassID(classID).
			SetDate(*date).
			SetStatus(studentattendance.Status(status)).
			SetNillableRemarks(nilIfEmpty(row.Note))

		if mathSubjectID > 0 {
			builder.SetSubjectID(mathSubjectID)
		}

		err = builder.
			OnConflict(sql.ConflictColumns(studentattendance.FieldStudentID, studentattendance.FieldSubjectID, studentattendance.FieldDate)).
			UpdateNewValues().
			Exec(ctx)
		if err != nil {
			continue
		}
		count++
	}

	fmt.Printf("   ✓ %d student attendance records\n", count)
	return nil
}

// ─── 12. FEE STRUCTURES ───────────────────────────────────────────────────────

func seedFeeStructures(ctx context.Context, client *ent.Client, academicYearMap map[string]int) (map[string]int, error) {
	fmt.Println("→ Seeding fee_structures…")
	var raw []JSONFeesType
	if err := loadJson("fees-type.json", &raw); err != nil {
		return nil, err
	}

	var defaultClassID int
	firstClass, err := client.Class.Query().Order(ent.Asc(class.FieldID)).First(ctx)
	if err == nil {
		defaultClassID = firstClass.ID
	} else {
		return nil, fmt.Errorf("no class ID available for fee structures: %w", err)
	}

	var academicYearID int
	for _, id := range academicYearMap {
		academicYearID = id
		break
	}

	feeLabelToId := make(map[string]int)

	for _, ft := range raw {
		label := strings.TrimSpace(ft.FeeTypeName)
		amount := parseMoney(ft.Amount)
		dueDate := toDate(ft.LastUpdated)

		fsObjID, err := client.FeeStructure.
			Create().
			SetClassID(defaultClassID).
			SetAcademicYearID(academicYearID).
			SetFeeLabel(label).
			SetAmount(amount).
			SetNillableDueDate(dueDate).
			OnConflict(sql.ConflictColumns(feestructure.FieldClassID, feestructure.FieldAcademicYearID, feestructure.FieldFeeLabel)).
			UpdateNewValues().
			ID(ctx)
		if err != nil {
			continue
		}
		feeLabelToId[strings.ToLower(label)] = fsObjID
	}

	annualKey := "annual fee"
	if _, exists := feeLabelToId[annualKey]; !exists {
		fsObjID, err := client.FeeStructure.
			Create().
			SetClassID(defaultClassID).
			SetAcademicYearID(academicYearID).
			SetFeeLabel("Annual Fee").
			SetAmount(10000).
			OnConflict(sql.ConflictColumns(feestructure.FieldClassID, feestructure.FieldAcademicYearID, feestructure.FieldFeeLabel)).
			UpdateNewValues().
			ID(ctx)
		if err == nil {
			feeLabelToId[annualKey] = fsObjID
		}
	}

	fmt.Printf("   ✓ %d fee_structures\n", len(feeLabelToId))
	return feeLabelToId, nil
}

// ─── 13. FEE PAYMENTS ─────────────────────────────────────────────────────────

func seedFeePayments(ctx context.Context, client *ent.Client, rollToUuid map[string]uuid.UUID, feeLabelToId map[string]int) error {
	fmt.Println("→ Seeding fee_payments…")
	var raw []JSONFee
	if err := loadJson("fees.json", &raw); err != nil {
		return err
	}

	typeToLabel := map[string]string{
		"library":   "library fee",
		"tuition":   "tuition fee",
		"transport": "transport fee",
		"exam":      "examination fee",
		"annual":    "annual fee",
		"other":     "miscellaneous fee",
	}

	count := 0
	for _, row := range raw {
		var rollNo string
		switch v := row.RollNo.(type) {
		case float64:
			rollNo = strconv.FormatFloat(v, 'f', 0, 64)
		case string:
			rollNo = strings.TrimSpace(v)
		default:
			rollNo = fmt.Sprintf("%v", v)
		}

		studentID, exists := rollToUuid[rollNo]
		if !exists {
			continue
		}

		feeLabel := typeToLabel[strings.ToLower(row.FeesType)]
		if feeLabel == "" {
			feeLabel = "miscellaneous fee"
		}

		feeStructureID, exists := feeLabelToId[feeLabel]
		if !exists {
			for _, id := range feeLabelToId {
				feeStructureID = id
				break
			}
		}
		if feeStructureID == 0 {
			continue
		}

		amountPaid := parseMoney(row.Amount)

		paymentStatus := "unpaid"
		if strings.ToLower(row.Status) == "paid" {
			paymentStatus = "paid"
		}

		paymentDate := toDate(row.PaymentDate)
		if paymentDate == nil {
			t := time.Now()
			paymentDate = &t
		}

		err := client.FeePayment.
			Create().
			SetStudentID(studentID).
			SetFeeStructureID(feeStructureID).
			SetAmountPaid(amountPaid).
			SetPaymentDate(*paymentDate).
			SetPaymentStatus(feepayment.PaymentStatus(paymentStatus)).
			SetNillablePaymentMethod(nilIfEmpty(row.PaymentType)).
			SetNillableTransactionRef(nilIfEmpty(row.InvoiceNo)).
			SetNillableRemarks(nilIfEmpty(row.Notes)).
			Exec(ctx)
		if err != nil {
			return fmt.Errorf("failed to insert fee payment: %w", err)
		}
		count++
	}

	fmt.Printf("   ✓ %d fee_payments\n", count)
	return nil
}

// ─── 14. EXAMS ────────────────────────────────────────────────────────────────

func seedExams(ctx context.Context, client *ent.Client, subjectMap map[string]int, academicYearMap map[string]int) error {
	fmt.Println("→ Seeding exams…")
	var raw []JSONExamSchedule
	if err := loadJson("examSchedule.json", &raw); err != nil {
		return err
	}

	var academicYearID int
	for _, id := range academicYearMap {
		academicYearID = id
		break
	}

	var defaultClassID int
	firstClass, err := client.Class.Query().Order(ent.Asc(class.FieldID)).First(ctx)
	if err == nil {
		defaultClassID = firstClass.ID
	} else {
		return fmt.Errorf("no class ID available for exams: %w", err)
	}

	for _, row := range raw {
		subjectName := strings.TrimSpace(row.Subject)
		if _, exists := subjectMap[subjectName]; !exists {
			code := strings.ToUpper(strings.ReplaceAll(subjectName, " ", ""))
			if len(code) > 10 {
				code = code[:10]
			}
			subID, err := client.Subject.
				Create().
				SetName(subjectName).
				SetNillableCode(nilIfEmpty(code)).
				SetNillableDescription(nilIfEmpty(fmt.Sprintf("%s subject", subjectName))).
				OnConflict(sql.ConflictColumns(subject.FieldCode)).
				UpdateNewValues().
				ID(ctx)
			if err == nil {
				subjectMap[subjectName] = subID
			}
		}
	}

	count := 0
	for _, row := range raw {
		subjectID, exists := subjectMap[row.Subject]
		if !exists {
			continue
		}

		examDate := toDate(row.Date)
		if examDate == nil {
			t := time.Now()
			examDate = &t
		}

		maxMarks := 100.0
		if f, err := strconv.ParseFloat(row.TotalMarks, 64); err == nil {
			maxMarks = f
		}
		passMarks := 35.0
		if f, err := strconv.ParseFloat(row.ReqMarks, 64); err == nil {
			passMarks = f
		}

		title := fmt.Sprintf("%s Exam — %s", row.Subject, row.Class)

		err = client.Exam.
			Create().
			SetTitle(title).
			SetClassID(defaultClassID).
			SetSubjectID(subjectID).
			SetExamType("Written").
			SetStartDate(*examDate).
			SetEndDate(*examDate).
			SetMaxMarks(maxMarks).
			SetPassMarks(passMarks).
			SetAcademicYearID(academicYearID).
			Exec(ctx)
		if err != nil {
			return fmt.Errorf("failed to insert exam %s: %w", title, err)
		}
		count++
	}

	fmt.Printf("   ✓ %d exams\n", count)
	return nil
}
