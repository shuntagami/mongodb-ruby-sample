#!make

build:
	docker compose build

run:
	docker compose run --rm ruby-app ./script

mongo-express:
	docker compose up mongo-express
