#!/usr/bin/env bash

export UID=$(id -u)
export GID=$(id -g)

docker compose --progress plain build
docker compose up
