#!make
include .env
#export $(shell sed 's/=.*//' .env)

MIGRATE_DIR=db/migrations
DB_URL=postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_HOST):$(POSTGRES_PORT)/$(POSTGRES_DB)?sslmode=disable

.PHONY: run_app
run_app: ## running application
	go run cmd/app/main.go

.PHONY: up
up: ## run the application on docker
	@docker compose up --build -d

.PHONY: create_postgres_db
create_postgres_db: ## creating database
	docker run --name $(POSTGRES_CONTAINER_NAME) -e POSTGRES_USER=$(POSTGRES_USER) -e POSTGRES_PASSWORD=$(POSTGRES_PASSWORD) -e POSTGRES_DB=$(POSTGRES_DB) -p $(POSTGRES_PORT):5432 -d postgres:16

.PHONY: create_migration
create_migration: ## create new migration file
	@migrate create -ext sql -dir $(MIGRATE_DIR) -seq $(name)

.PHONY: migrate_up
migrate_up: ## apply all up migrations
	@echo "start migration up"
	@migrate -source file://$(MIGRATE_DIR) -database "$(DB_URL)" up $(version)
	@echo "done"

.PHONY: migrate_down
migrate_down: ## apply all down migrations
	@echo "start migration down"
	@migrate -source file://$(MIGRATE_DIR) -database "$(DB_URL)" down $(version)
	@echo "done"

.PHONY: migrate_clean
migrate_clean: ## clean migrations
	@echo "start migration clean"
	@migrate -source file://$(MIGRATE_DIR) -database "$(DB_URL)" force 1
	@echo "done"

.PHONY: migrate_status
migrate_status: ## get migration status
	@echo "start migration status"
	@migrate -source file://$(MIGRATE_DIR) -database "$(DB_URL)" version
	@echo "done"