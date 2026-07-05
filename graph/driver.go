package graph

type Driver struct {
	ID          string `json:"id"`
	DriverName  string `json:"driverName"`
	LicenseNo   string `json:"licenseNo"`
	Phone       string `json:"phone"`
	JoiningDate string `json:"joiningDate"`
	Address     string `json:"address"`
	Experience  string `json:"experience"`
	Status      string `json:"status"`
	Img         string `json:"img"`
}

type CreateDriverInput struct {
	DriverName  string `json:"driverName"`
	LicenseNo   string `json:"licenseNo"`
	Phone       string `json:"phone"`
	JoiningDate string `json:"joiningDate"`
	Address     string `json:"address"`
	Experience  string `json:"experience"`
	Status      string `json:"status"`
	Img         string `json:"img"`
}

type UpdateDriverInput struct {
	ID          string `json:"id"`
	DriverName  string `json:"driverName"`
	LicenseNo   string `json:"licenseNo"`
	Phone       string `json:"phone"`
	JoiningDate string `json:"joiningDate"`
	Address     string `json:"address"`
	Experience  string `json:"experience"`
	Status      string `json:"status"`
	Img         string `json:"img"`
}
