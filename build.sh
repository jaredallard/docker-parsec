#!/usr/bin/env bash
docker build -t ghcr.io/jaredallard/docker-parsec:main .
docker push ghcr.io/jaredallard/docker-parsec:main
