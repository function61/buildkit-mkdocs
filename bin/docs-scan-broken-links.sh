#!/bin/bash -eu

# NOTE: this maybe not necessary, since mkdocs does link checking automatically

# this assumes most of your docs are in docs/... and README.md. we could've used an elaborate
# "$ find ... | xargs liche ..." too, but then we'd have to figure out excluding situations
# like frontend/node_modules/... (<-- lots of .md docs here)

# - "-r" makes it it recurse into directories
# - "-x" (regex) to not check external URLs
liche -r -x ^https?: README.md docs/
