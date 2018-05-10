#!/usr/bin/env bash

# update the content of docs (which is the hosted html version) from markdown files

docs/%.html: %.md killercupPandoc.css
	pandoc --standalone --include-in-header killercupPandoc.css --from markdown --to html $< > $@

# special rule for index.html
# If "index.md" is used as base name, it is displayed automatically as index
# page for the github page -- but rendered in a different fashion...
docs/index.html: webpage_index.md killercupPandoc.css
	pandoc --standalone --include-in-header killercupPandoc.css --from markdown --to html $< > $@
