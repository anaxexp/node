-include .env

NODE_VER ?= 9.11.2

NODE_VER_MINOR = $(shell echo "${NODE_VER}" | grep -oE '^[0-9]+\.[0-9]+')
BASE_IMAGE_TAG = $(NODE_VER)-alpine

TAG ?= $(NODE_VER_MINOR)
REPO = anaxexp/node
NAME = node-$(NODE_VER_MINOR)

ifneq ($(REGISTRY),)
    override REPO := node
endif

.PHONY: build test push shell run start stop logs clean release

default: build

build:
	docker build -t $(REPO):$(TAG) --build-arg BASE_IMAGE_TAG=$(BASE_IMAGE_TAG) ./

test:
	IMAGE=$(REPO):$(TAG) echo "SKIP"

push:
	docker push $(REPO):$(TAG)

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG) $(CMD)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(REPO):$(TAG)

stop:
	docker stop $(NAME)

logs:
	docker logs $(NAME)

clean:
	-docker rm -f $(NAME)

release: build push
