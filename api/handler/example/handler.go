package example

// add function handler here

type Handler interface {
	Get() error
	Create() error
	Update() error
	Delete() error
}
