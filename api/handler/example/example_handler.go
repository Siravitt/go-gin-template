package example

import "github.com/Siravitt/go-gin-template/api/service/example"

// for handle request

type exampleHandler struct {
	exampleHandler example.Service
}

func NewExampleHandler(s example.Service) Handler {
	return exampleHandler{exampleHandler: s}
}

func (h exampleHandler) Get() error {
	return nil
}

func (h exampleHandler) Create() error {
	return nil
}

func (h exampleHandler) Update() error {
	return nil
}

func (h exampleHandler) Delete() error {
	return nil
}
