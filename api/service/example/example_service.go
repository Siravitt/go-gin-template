package example

import "github.com/Siravitt/go-gin-template/api/repository/example"

// for logic

type exampleService struct {
	exampleRepository example.Repository
}

func NewExampleService(r example.Repository) Service {
	return exampleService{exampleRepository: r}
}

func (s exampleService) Get() error {
	return nil
}

func (s exampleService) Create() error {
	return nil
}

func (s exampleService) Update() error {
	return nil
}

func (s exampleService) Delete() error {
	return nil
}
