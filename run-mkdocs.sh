#!/bin/bash -eu

sourceDirectory="$1"
destinationArchive="$2"

workspaceDir="$(pwd)"
docsOutputDir="/tmp/docs-ready/"

# mkdocs requires these
export LC_ALL="C.UTF-8"
export LANG="C.UTF-8"

buildWithMkdocs() {
	rm -rf "$docsOutputDir"

	cd "$sourceDirectory"
	mkdocs build --clean -f mkdocs.yml -d "$docsOutputDir"

	cd "$docsOutputDir" && tar -czf "$workspaceDir/$destinationArchive" *
}

buildWithMkdocs
