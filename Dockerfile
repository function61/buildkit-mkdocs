FROM alpine:3.5

RUN apk add --no-cache py2-pip && pip install mkdocs
