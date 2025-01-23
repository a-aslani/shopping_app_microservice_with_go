package model

import "time"

type Category struct {
	ID         int64      `json:"id"`
	Name       string     `json:"name"`
	Slug       string     `json:"slug"`
	ParentID   *int64     `json:"parent_id"`
	ParentName *string    `json:"parent_name"`
	Priority   int        `json:"priority"`
	Status     int        `json:"status"`
	CreatedAt  time.Time  `json:"created_at"`
	UpdatedAt  *time.Time `json:"updated_at"`
	DeletedAt  *time.Time `json:"deleted_at"`
}
