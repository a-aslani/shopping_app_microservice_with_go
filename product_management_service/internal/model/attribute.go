package model

import "time"

type Attribute struct {
	ID        int64      `json:"id"`
	Category  Category   `json:"category"`
	Name      string     `json:"name"`
	Priority  int        `json:"priority"`
	Status    int        `json:"status"`
	CreatedAt time.Time  `json:"created_at"`
	UpdatedAt *time.Time `json:"updated_at"`
	DeletedAt *time.Time `json:"deleted_at"`
}
