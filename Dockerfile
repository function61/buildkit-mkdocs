# has material design theme, some Markdown extensions and fixes. based on Alpine.
FROM squidfunk/mkdocs-material:5.0.0rc4

RUN apk add curl \
	&& curl --fail --location -o /bin/liche https://s3.amazonaws.com/files.function61.com/infrastructure-dl/liche/liche-f57a5d1 \
	&& chmod +x /bin/liche

ADD bin/run-mkdocs.sh bin/docs-scan-broken-links.sh bin/preview.sh /bin/

WORKDIR /workspace

# user has to explicitly specify run-mkdocs <sourceDir> <destinationPath>
CMD false
