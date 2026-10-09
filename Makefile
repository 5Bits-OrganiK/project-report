# Docs-as-Code: compila el informe Markdown a PDF con Pandoc + Typst.
#
#   make pdf     -> build/output/informe-organik.pdf
#   make clean   -> elimina build/output
#
# Requisitos: pandoc >= 3.1 y typst >= 0.11 en el PATH (winget install Typst.Typst / brew install pandoc typst).

PANDOC   ?= pandoc
DEFAULTS := build/defaults.yaml
OUTPUT   := build/output/informe-organik.pdf
SOURCES  := $(wildcard report/*.md report/front-matter/*.md report/annexes/*.md) build/toc.md

.PHONY: pdf clean check

pdf: $(OUTPUT)

$(OUTPUT): $(SOURCES) $(DEFAULTS) build/metadata.yaml build/typst-header.typ build/filters/html-to-ast.lua
	@mkdir -p build/output
	$(PANDOC) --defaults=$(DEFAULTS)

check:
	$(PANDOC) --version | head -1
	typst --version

clean:
	rm -rf build/output
