package model

import "time"

type AttributeValue struct {
	ID        int64      `json:"id"`
	Product   Product    `json:"product"`
	Attribute Attribute  `json:"attribute"`
	Value     string     `json:"value"`
	Priority  int        `json:"priority"`
	CreatedAt time.Time  `json:"created_at"`
	UpdatedAt *time.Time `json:"updated_at"`
	DeletedAt *time.Time `json:"deleted_at"`
}
