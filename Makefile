.PHONY: build

build:
	docker-compose build rinha-db

down:
	docker-compose down

up:
	docker-compose up -d

logs:
	docker-compose logs -f -t rinha-db >> /dev/stdout

login:
	docker-compose run rinha-db sh