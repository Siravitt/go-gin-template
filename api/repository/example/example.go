package example

// add database function here
type Repository interface {
	Get() error
	Create() error
	Update() error
	Delete() error
}
