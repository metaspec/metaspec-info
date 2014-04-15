.PHONY: all

ALL_HTML = html/metaspec.html index.html

all: $(ALL_HTML)

index.html: html/index.html
	tt-render --path=html --post-chomp index.html > $@

html/%.html: data/%.md
	markdown_py $< > $@
