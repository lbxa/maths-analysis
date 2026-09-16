LATEXMK ?= latexmk
LATEXMK_FLAGS ?= -pdf -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1
HOMEWORK := $(wildcard problems/hw*.tex)

.PHONY: all book problems check watch clean

all: book

book:
	$(LATEXMK) $(LATEXMK_FLAGS) -outdir=build main.tex

problems:
	@set -e; for source in $(HOMEWORK); do \
		$(LATEXMK) $(LATEXMK_FLAGS) -outdir=build/problems "$$source"; \
	done

check: book problems

watch:
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc -view=none -outdir=build main.tex

clean:
	$(LATEXMK) -C -outdir=build main.tex
	@set -e; for source in $(HOMEWORK); do \
		$(LATEXMK) -C -outdir=build/problems "$$source"; \
	done
