.ONESHELL: ## MAKE IT
.PHONY: build, run, stop

IMAGE_NAME = delichecki.ru/coco-annotator
DOCKERFILE = Dockerfile

tag = 1.0.0
IMAGE = $(IMAGE_NAME):$(tag)

all: build

build: ## kek
    $(shell docker build -f $(DOCKERFILE) -t $(IMAGE) .)

run: ## kek
    $(shell docker-compose up -d)

stop: ## kek
    $(shell docker-compose down)