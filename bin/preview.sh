#!/bin/sh -eu

# for some reason this works but when in docs/ dir and running just bare serve, it complains
# about output dir..

mkdocs serve --dev-addr 0.0.0.0:8000 -f docs/mkdocs.yml
