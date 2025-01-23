package repository

import "context"

type CategoryRepository interface {
	Insert(ctx context.Context)
}
