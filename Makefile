.PHONY: build down up logs login prune-all

build:
	docker-compose build

down:
	docker-compose down

up:
	docker-compose up -d

logs:
	docker-compose logs -f -t db >> /dev/stdout

login:
	docker-compose run db sh

prune-all:
	docker ps -aq | xargs docker stop | xargs docker rm && docker volume prune -a