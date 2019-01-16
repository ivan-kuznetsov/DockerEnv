#!/usr/bin/make

SHELL = /bin/sh

NODE_CONTAINER_NAME := frontend-nodejs

docker := $(shell command -v docker 2> /dev/null)
docker_compose := $(shell command -v docker-compose 2> /dev/null)

version:
	$(docker_compose) --version

up:
	$(docker_compose) up --build -d

down:
	$(docker_compose) down

restart:
	$(docker_compose) restart

shell:
	$(docker_compose) exec "$(NODE_CONTAINER_NAME)" /bin/sh

install:
	$(docker_compose) run --rm "$(NODE_CONTAINER_NAME)" npm install

watch:
	$(docker_compose) run --rm "$(NODE_CONTAINER_NAME)" npm run watch

dev:
	$(docker_compose) run --rm "$(NODE_CONTAINER_NAME)" npm run dev

prod:
	$(docker_compose) run --rm "$(NODE_CONTAINER_NAME)" npm run prod

deploy:
	$(docker_compose) run --rm "$(NODE_CONTAINER_NAME)" npm run deploy
