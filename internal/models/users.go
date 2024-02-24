package models

import (
	"database/sql"
	"time"
)

type User struct {
	ID             int
	Name           string
	Email          string
	HashedPassword []byte
	Created        time.Time
}

type UserModal struct {
	DB *sql.DB
}

func (m *UserModal) Insert(name, email, password string) error {
	return nil
}

func (m *UserModal) Authenticate(email, password string) (int, error) {
	return 0, nil
}

func (m *UserModal) Exists(id int) (bool, error) {
	return false, nil
}
