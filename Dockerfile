FROM ubuntu:xenial-20160818

# RUN apk add --no-cache py2-pip && pip install mkdocs
RUN apt update && apt install -y mkdocs
