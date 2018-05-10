#!/usr/bin/env bash

# update the content of docs (which is the hosted html version) from markdown files

docs/%.html: %.md killercupPandoc.css
	pandoc --standalone --include-in-header killercupPandoc.css --from markdown --to html $< > $@
