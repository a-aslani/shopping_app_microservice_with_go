package model

import "time"

type Variant struct {
	ID        int64      `json:"id"`
	Product   *Product   `json:"product"`
	Color     string     `json:"color"`
	Size      string     `json:"size"`
	Price     float64    `json:"price"`
	Discount  float64    `json:"discount"`
	Priority  int        `json:"priority"`
	Stock     int        `json:"stock"`
	Status    int        `json:"status"`
	CreatedAt time.Time  `json:"created_at"`
	UpdatedAt *time.Time `json:"updated_at"`
	DeletedAt *time.Time `json:"deleted_at"`
}
