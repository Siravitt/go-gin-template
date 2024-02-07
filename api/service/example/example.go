package example

// add service function here
type Service interface {
	Get() error
	Create() error
	Update() error
	Delete() error
}
