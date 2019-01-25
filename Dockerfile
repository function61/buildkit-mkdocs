# TODO: maybe use something like https://github.com/melo/docker-mkdocs-alpine
FROM ubuntu:latest

RUN apt update && apt install -y mkdocs

ADD run-mkdocs.sh /usr/local/bin/run-mkdocs.sh

WORKDIR /workspace

# user has to explicitly specify run-mkdocs <sourceDir> <destinationPath>
CMD false
