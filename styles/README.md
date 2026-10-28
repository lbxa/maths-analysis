# Bibliography styles

The shared preamble loads `analysis-ams.bbx` with the `ams-alphabetic` citation
style and Biber. References use abbreviated author/year labels such as
`[Can83]` and `[Rod20]` and alphabetic author/year/title sorting. The entry
typography follows the author's reference paper: given-name initials before
surnames, upright article and webpage titles, italic journal and book titles,
and full stops between the main components. Journal details use
`volume(issue):pages, year`, substituting an article identifier for pages when
appropriate. Repeat author names in each entry rather than replacing them
with a dash. Retain source title capitalisation and protect proper names in
the metadata.

The author-based label convention follows the supplied
[reference paper](https://mntruell.com/math.pdf), whose references on pages
23--24 use labels such as `[Bro86]` and `[BHV01]`. A single author contributes
a surname abbreviation; multiple authors contribute surname initials; the
year distinguishes dated works. Up to four authors contribute surname
initials; longer lists use the first three followed by a plus sign. Undated
entries use the name portion alone. Group multiple sources with commas and
use the normal citation postnote for a page, for example `[Ume08, p. 33]`.

`analysis-ams.bbx` extends Herbert Voß's
[biblatex-ams 0.01](https://ctan.org/pkg/biblatex-ams), released in April 2026.
Its project-specific overrides implement the reference paper's entry
typography and journal detail order. They keep DOI and URL links and access
dates for online sources, but suppress ISBNs. Original upstream files remain
unchanged; make local style changes in `analysis-ams.bbx` and citation settings
in the shared preamble.

The unmodified upstream sources are bundled in `biblatex-ams/`, with their
README, changelog, documentation sources, and LPPL license. The complete
[upstream archive](https://mirrors.ctan.org/macros/latex/contrib/biblatex-contrib/biblatex-ams.zip)
also contains the compiled documentation. See
[third-party notices](../THIRD_PARTY_NOTICES.md#ams-compatible-bibliography-styles)
for attribution and license scope.

The preamble resolves these files through `analysisroot`, so the book,
standalone formula sheet, and homework entries use the same style from either
supported working directory. Run `make check` after changing a style or its
loading paths. Biber generates the same author-based label for each source
in citations and the bibliography, adding disambiguation suffixes when needed.
Keep internal citation keys stable and do not type rendered labels by hand.
