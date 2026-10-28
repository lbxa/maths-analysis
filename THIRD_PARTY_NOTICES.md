# Third-party notices

The book's original text and illustrations, including their editable sources,
are licensed under [CC BY-NC-ND 4.0](LICENSE-CC-BY-NC-ND-4.0.txt), except where otherwise
indicated. Build scripts and typesetting infrastructure remain under the
[Apache License, Version 2.0](LICENSE). The following notices identify
third-party material, its terms, and source credits.

## Tufte-LaTeX specimen material

Source: [Tufte-LaTeX](https://github.com/Tufte-LaTeX/tufte-latex), including its
sample book and graphics, imported through the supplied modified book template.

The upstream project credits:

> Copyright 2007–2015 by Kevin Godby, Bil Kleb, and Bill Wood.

The title and contents layout also draws on
[Kevin Godby's Tufte-LaTeX example](https://groups.google.com/forum/#!topic/tufte-latex/ujdzrktC1BQ),
as credited in the supplied template.

License: [Apache License, Version 2.0](LICENSE).
The included license text comes from the
[Apache Software Foundation](https://www.apache.org/licenses/LICENSE-2.0.txt).

### Material retained in this repository

- Specimen prose, diagrams, tables, and examples in blocks marked
  `TUFTE PLACEHOLDER` under `sections/`.
- Sample graphics in `figures/template/` and their original source credits
  in the specimen captions.
- Template documentation helpers in `macros.tex` and specimen bibliography
  entries in `bibliography.bib`.
- Adapted title and contents formatting in `preamble.tex` and sample prose in
  the introduction. The copyright page retains a separate template notice.

### Project modifications

The imported sample has been split into course parts, chapters, and topic
files. Labels and figure paths have been updated, and title, chapter, contents,
and front-matter layouts have been adapted for collaborative analysis notes.
The retained text and figures currently demonstrate the layout and will be
replaced as students write the notes.

Keep the source credits and this license with any retained or adapted specimen
material. The Tufte-LaTeX classes themselves are supplied by the contributor's
LaTeX installation rather than copied into this repository.

## Formula-sheet layout inspiration

The supplied landscape cheat-sheet example credits Dave Richeson,
Dickinson College, and [divisbyzero.com](https://divisbyzero.com).
Its compact, grouped, multicolumn layout inspired the portrait two-column
appendix in `sections/appendices/formula-sheet.tex`. The analysis formulas
and local book styling were written for these notes; the supplied physics
content is not included.

## AMS-compatible bibliography styles

The unmodified source files under `styles/biblatex-ams/` are from
[biblatex-ams 0.01](https://ctan.org/pkg/biblatex-ams), copyright 2026
Herbert Voß, based on [biblatex-math](https://github.com/konn/biblatex-math).
They are distributed under the LaTeX Project Public License; its text is
included in `styles/biblatex-ams/LPPL-1.3c.txt`. The upstream file headers,
README, changelog, and documentation sources are retained.

The complete upstream distribution, including compiled documentation, is
available from the [CTAN archive](https://mirrors.ctan.org/macros/latex/contrib/biblatex-contrib/biblatex-ams.zip).
The project's `styles/analysis-ams.bbx` extends these styles with author-name,
title, punctuation, and journal-detail formatting to match the author's
reference paper. Its configuration and portable
loading paths are documented in [styles/README.md](styles/README.md).

## Creative Commons license badge

The official CC BY-NC-ND badge in `figures/licensing/cc-by-nc-nd.eps` was downloaded from
[Creative Commons' downloads page](https://creativecommons.org/mission/downloads/)
at [the official EPS source](https://mirrors.creativecommons.org/presskit/buttons/88x31/eps/by-nc-nd.eps).
The adjacent PDF is a vector conversion for pdfLaTeX; the badge's design and
proportions are unchanged.

The badge identifies the license applying to the book's original content.
Creative Commons logos are trademarks used under the
[Creative Commons Trademark Policy](https://creativecommons.org/policies/#trademark),
rather than under the book's content license. The printed badge links to the
[CC BY-NC-ND 4.0 deed](https://creativecommons.org/licenses/by-nc-nd/4.0/).
