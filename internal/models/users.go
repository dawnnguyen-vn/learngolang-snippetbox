package models

import (
	"database/sql"
	"fmt"
	"time"
)

type User struct {
	ID             int
	Name           string
	Email          string
	HashedPassword []byte
	Created        time.Time
}

type UserModel struct {
	DB *sql.DB
}

func (m *UserModel) Insert(name string, email string, password string) error {
	fmt.Print("Insert...")
	return nil
}

func (m *UserModel) Authenticate(email string, password string) (int, error) {
	fmt.Print("Authenticate...")
	return 0, nil
}

func (m *UserModel) Exists(id int) (bool, error) {
	return false, nil
}
