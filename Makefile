.PHONY: up down build psql run-local

up:
	@docker-compose -f docker-compose.yml up

down:
	@docker-compose down

build:
	@docker-compose -f docker-compose.yml build

psql:
	@psql --host=localhost --port=5432 --user=postgres

run-dev-api:
	@GO_ENV=development PORT=3000 POSTGRES_USER=postgres POSTGRES_HOST=0.0.0.0 go run src/main.go
