IMAGE ?= joaopedrolucatto/rails-project-generator
TAG ?= latest
PROJECT ?= ./app

build:
	docker build -t $(IMAGE):$(TAG) .

generate: build
	mkdir -p $(PROJECT)
	docker run --rm \
		-v $(PROJECT):/app \
		$(IMAGE):$(TAG) rails new . $(ARGS)

publish:
	docker push $(IMAGE):$(TAG)
