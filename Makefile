compose = docker compose -f build/docker-compose.yml
PROJECT_PATH ?= .

build:
	HOST_PATH=../$(PROJECT_PATH) $(compose) build

generate:
	HOST_PATH=../$(PROJECT_PATH) $(compose) run web rails new . $(ARGS)