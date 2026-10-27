LATEXMK ?= latexmk
LATEXMK_FLAGS ?= -pdf -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1
HOMEWORK := $(wildcard problems/hw*.tex)
HW ?= hw01

.PHONY: all book formula-sheet problem problems check check-texshop watch watch-problems clean

all: book

book:
	$(LATEXMK) $(LATEXMK_FLAGS) -outdir=build main.tex

formula-sheet:
	$(LATEXMK) $(LATEXMK_FLAGS) -outdir=build formula-sheet.tex

problem: problems/$(HW).tex
	$(LATEXMK) $(LATEXMK_FLAGS) -outdir=build/problems "$<"

problems:
	@set -e; for source in $(HOMEWORK); do \
		$(LATEXMK) $(LATEXMK_FLAGS) -outdir=build/problems "$$source"; \
	done

# Match TeXShop's working directory and keep its build cache separate.
check-texshop:
	@set -e; cd problems; for source in $(notdir $(HOMEWORK)); do \
		$(LATEXMK) $(LATEXMK_FLAGS) "$$source"; \
	done

check: book formula-sheet problems check-texshop

watch:
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc -view=none -outdir=build main.tex

watch-problems: problems/$(HW).tex
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc -view=none -outdir=build/problems "$<"

clean:
	$(LATEXMK) -C -outdir=build main.tex
	$(LATEXMK) -C -outdir=build formula-sheet.tex
	$(LATEXMK) -C formula-sheet.tex
	@set -e; for source in $(HOMEWORK); do \
		$(LATEXMK) -C -outdir=build/problems "$$source"; \
	done
	@set -e; cd problems; for source in $(notdir $(HOMEWORK)); do \
		$(LATEXMK) -C "$$source"; \
	done
