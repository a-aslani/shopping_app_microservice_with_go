package model

import "time"

type Product struct {
	ID        int64      `json:"id"`
	Category  Category   `json:"category"`
	Name      string     `json:"name"`
	Slug      string     `json:"slug"`
	Status    int        `json:"status"`
	Priority  int        `json:"priority"`
	CreatedAt time.Time  `json:"created_at"`
	UpdatedAt *time.Time `json:"updated_at"`
	DeletedAt *time.Time `json:"deleted_at"`
}
