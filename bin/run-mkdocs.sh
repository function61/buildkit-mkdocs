#!/bin/sh -eu

sourceDirectory="$1"
destinationArchive="$2"

# mkdocs requires these
export LC_ALL="C.UTF-8"
export LANG="C.UTF-8"

buildWithMkdocs() {
	local docsBuildTempdir="/tmp/docs-ready/"

	rm -rf "$docsBuildTempdir" "$destinationArchive"

	# --strict makes mkdocs fail on warnings. most useful warning for us is that mkdocs
	# checks that links to other .md files (and images etc.) don't 404
	(cd "$sourceDirectory" && mkdocs build --strict --clean -f mkdocs.yml -d "$docsBuildTempdir")

	tar -C "$docsBuildTempdir" -czf "$destinationArchive" .
}

buildWithMkdocs
