# Node Docker Container Images

[![Build Status](https://travis-ci.org/anaxexp/node.svg?branch=master)](https://travis-ci.org/anaxexp/node)
[![Docker Pulls](https://img.shields.io/docker/pulls/anaxexperience/node.svg)](https://hub.docker.com/r/anaxexperience/node)
[![Docker Stars](https://img.shields.io/docker/stars/anaxexperience/node.svg)](https://hub.docker.com/r/anaxexperience/node)
[![Docker Layers](https://images.microbadger.com/badges/image/anaxexperience/node.svg)](https://microbadger.com/images/anaxexperience/node)

## Docker Images

❗️For better reliability we release images with stability tags (`anaxexperience/node:8-X.X.X`) which correspond to [git tags](https://github.com/anaxexp/node/releases). We strongly recommend using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [node](https://hub.docker.com/r/_/node/)
* [Travis CI builds](https://travis-ci.org/anaxexp/node) 
* [Docker Hub](https://hub.docker.com/r/anaxexperience/node)

Supported tags and respective `Dockerfile` links:

* `9`, `9.11`, `latest` [_(Dockerfile)_](https://github.com/anaxexp/node/tree/master/Dockerfile)
* `8`, `8.11` [_(Dockerfile)_](https://github.com/anaxexp/node/tree/master/Dockerfile)
* `6`, `6.14` [_(Dockerfile)_](https://github.com/anaxexp/node/tree/master/Dockerfile)

## Environment variables 

| Variable     | Default Value  | Description            |
| ------------ | -------------- | ---------------------- |
| `NODE_PORT`  | `3000`         | Used for health checks |

## Orchestration actions

Usage:
```
make COMMAND [params ...]

commands:
    check-ready [host max_try wait_seconds delay_seconds]
 
default params values:
    host localhost
    max_try 1
    wait_seconds 1
    delay_seconds 0
```
