package example

// for connect database only

type exampleRepository struct {
	db any // change type database here example: *sqlx.DB, *gorm.DB
}

func NewExampleRepository(db any) Repository {
	return exampleRepository{db: db}
}

func (r exampleRepository) Get() error {
	return nil
}

func (r exampleRepository) Create() error {
	return nil
}

func (r exampleRepository) Update() error {
	return nil
}

func (r exampleRepository) Delete() error {
	return nil
}
