# Editor customisation

Share portable team settings in the repository's `.vscode/settings.json` and
commit that file. Keep machine-specific tool paths and personal preferences in
your editor's local User `settings.json`, outside the repository.

| Settings | Location | Commit to this repository? |
| --- | --- | --- |
| Team formatter choice and shared editing conventions | `.vscode/settings.json` | Yes |
| Absolute executable paths and personal preferences | Editor User `settings.json` | No |

Workspace settings override User settings for the same key. Leave
machine-specific keys out of the shared file so each contributor's User
settings can supply them. See the
[VS Code settings documentation](https://code.visualstudio.com/docs/configure/settings)
for settings locations and precedence.

## LaTeX Workshop formatting

The shared `.vscode/settings.json` selects `latexindent`:

```json
{
  "latex-workshop.formatting.latex": "latexindent"
}
```

Install `latexindent` locally. If the editor can find it on `PATH`, no path
setting is needed. Otherwise, run **Preferences: Open User Settings (JSON)**
from the Command Palette and merge an executable path into the existing
settings object. For MacTeX installed at `/Library/TeX/texbin`, use:

```json
{
  "latex-workshop.formatting.latexindent.path": "/Library/TeX/texbin/latexindent"
}
```

On macOS, the default User settings files are:

- VS Code: `~/Library/Application Support/Code/User/settings.json`.
- Cursor: `~/Library/Application Support/Cursor/User/settings.json`.

Use the command above to open the settings for your active editor profile.
These files are outside the repository and are not committed with the project.
Choose a path that matches your own installation and confirm that the
executable runs successfully. `latexindent` also requires Perl modules;
selecting it in the editor does not install missing dependencies. See the
[LaTeX Workshop formatting documentation](https://github.com/James-Yu/LaTeX-Workshop/wiki/Format)
for supported formatters and their settings.

## Bibliography-aware builds

The shared settings select the `latexmk (Biber and references)` recipe for
manual and automatic builds. It runs from the workspace root, uses
pdfLaTeX, and lets latexmk run Biber, makeindex, and the additional LaTeX
passes needed to resolve citations and references.

`latex-workshop.latex.build.enableMagicComments` is set to `false` so a
`% !TEX program = pdflatex` line cannot replace the recipe with a single
LaTeX pass. The `% !TEX root` hints still identify the main document for
included topic files. Use **LaTeX Workshop: Build LaTeX project** to rebuild
the preview with this recipe.

The editor writes the PDF beside its root source (`main.pdf` for the book),
matching the existing editor preview. Terminal `make book` writes the same
book to `build/main.pdf`. Both builds process `bibliography.bib`; the
bibliography appears after the course chapters and before the appendices.
If a preview displays a bold citation key such as `[Waldschmidt2017]`,
the bibliography pass has not completed for that PDF. Run the full recipe
and check its build output rather than invoking pdfLaTeX alone.

The recipe uses `latexmk` from `PATH`; shared settings contain no
machine-specific executable paths.

## Codex stop hook

The project-local `.codex/hooks.json` runs `make check` once when the main
agent turn finishes. It calls `scripts/codex-stop-check.sh` from the
repository root, including when the session starts in a subdirectory.
The check builds the book and all homework handouts using the tools on
`PATH`, with a ten-minute timeout.

Build output is saved to `build/codex-stop-check.log`. A failed check
produces a Codex warning without automatically restarting the agent.
The script returns JSON so build output cannot corrupt the hook response.

Review and trust this hook through `/hooks` before relying on it. Codex
requires trust for new or changed hooks, and project hooks also require a
trusted project configuration. See the
[Codex hook documentation](https://learn.chatgpt.com/docs/hooks).

## Check before committing

Review `.vscode/settings.json` before committing it. Include portable team
settings and keep machine-specific paths in User settings. Do not ignore the
shared file or the entire `.vscode` folder. Add reusable setup instructions to
this guide.

Shared changes to the book's notation, typography, or layout belong in the
source files described in [CONTRIBUTING.md](CONTRIBUTING.md).
