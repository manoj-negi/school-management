package main

// JSON structs representing the source data

type JSONDepartment struct {
	DepartmentName string `json:"department_name"`
}

type JSONTeacher struct {
	ID                    string `json:"id"`
	Name                  string `json:"name"`
	Email                 string `json:"email"`
	Gender                string `json:"gender"`
	Birthdate             string `json:"birthdate"`
	Mobile                string `json:"mobile"`
	Address               string `json:"address"`
	Department            string `json:"department"`
	Degree                string `json:"degree"`
	HireDate              string `json:"hire_date"`
	Img                   string `json:"img"`
	Status                string `json:"status"`
	SubjectSpecialization string `json:"subject_specialization"`
}

type JSONStudent struct {
	Name                 string      `json:"name"`
	Email                string      `json:"email"`
	RollNo               interface{} `json:"rollNo"`
	Gender               string      `json:"gender"`
	DateOfBirth          string      `json:"date_of_birth"`
	Mobile               string      `json:"mobile"`
	ParentGuardianMobile string      `json:"parent_guardian_mobile"`
	Address              string      `json:"address"`
	Img                  string      `json:"img"`
	Status               string      `json:"status"`
	EnrollmentDate       string      `json:"enrollment_date"`
}

type JSONStaff struct {
	Name        string      `json:"name"`
	Email       string      `json:"email"`
	Gender      string      `json:"gender"`
	DateOfBirth string      `json:"date_of_birth"`
	Mobile      string      `json:"mobile"`
	Address     string      `json:"address"`
	Role        string      `json:"role"`
	JoiningDate string      `json:"joining_date"`
	Salary      interface{} `json:"salary"`
	Img         string      `json:"img"`
	Status      string      `json:"status"`
}

type JSONClass struct {
	ClassID       int    `json:"classId"`
	ClassName     string `json:"className"`
	Semester      string `json:"semester"`
	StartDate     string `json:"startDate"`
	EndDate       string `json:"endDate"`
	ClassCapacity int    `json:"classCapacity"`
}

type JSONTask struct {
	Title    string `json:"title"`
	Note     string `json:"note"`
	Priority string `json:"priority"`
	Done     bool   `json:"done"`
	DueDate  string `json:"due_date"`
}

type JSONHoliday struct {
	Title       string `json:"title"`
	StartDate   string `json:"start_date"`
	Description string `json:"description"`
	Status      string `json:"status"`
}

type JSONSchoolHoliday struct {
	HolidayName    string `json:"holidayName"`
	Date           string `json:"date"`
	Details        string `json:"details"`
	ApprovalStatus string `json:"approvalStatus"`
}

type JSONStaffAttendance struct {
	Date             string `json:"date"`
	AttendanceStatus string `json:"attendance_status"`
	Remarks          string `json:"remarks"`
}

type JSONStudentAttendance struct {
	RollNo interface{} `json:"rollNo"`
	Class  string      `json:"class"`
	Date   string      `json:"date"`
	Status string      `json:"status"`
	Note   string      `json:"note"`
}

type JSONFeesType struct {
	FeeTypeName string      `json:"feeTypeName"`
	Amount      interface{} `json:"amount"`
	LastUpdated string      `json:"lastUpdated"`
}

type JSONFee struct {
	RollNo      interface{} `json:"rollNo"`
	FeesType    string      `json:"feesType"`
	Amount      interface{} `json:"amount"`
	Status      string      `json:"status"`
	PaymentType string      `json:"paymentType"`
	PaymentDate string      `json:"paymentDate"`
	InvoiceNo   string      `json:"invoiceNo"`
	Notes       string      `json:"notes"`
}

type JSONExamSchedule struct {
	Subject    string `json:"subject"`
	Class      string `json:"class"`
	Date       string `json:"date"`
	TotalMarks string `json:"totalMarks"`
	ReqMarks   string `json:"reqMarks"`
}
