# CLAUDE.md

This file provides guidance to LLM agents like Claude Code when working with code in this repository.

## Build

```bash
pdflatex resume.tex   # produces resume.pdf
```

Requires LaTeX. Run `./setup.sh` on Mac, otherwise inform the user that they need to ensure a proper TeX distribution is available and to look at `./setup.sh` for reference.

Format `.tex`/`.cls` source with `tex-fmt resume.tex` (installed by `setup.sh`).

After editing, verify with `pdflatex -interaction=nonstopmode -halt-on-error resume.tex` and check the `Output written ... (N pages...)` line — target keeps the PDF to 2–3 pages.

LaTeX gotcha: bare `~` renders as a non-breaking space. Use `\textasciitilde` for a literal tilde (e.g. `\textasciitilde\$20K`).

## Structure

Single-file LaTeX resume (`resume.tex`) using custom class `resume.cls`.

Key custom commands in `resume.cls`:
- `\employer{name}{url}{dates}{title}{body}` — job entry
- `\project{name}{url}{role}{description}` — project entry
- `\stdtable{...}` — two-column table (used for education)
- `\jobitems` environment — nested bullet list inside employer body
- `\footeremail`, `\footerphone`, `\footerlink` — footer macros

Commented-out sections (`%`) are older roles/sections kept for reference. Uncomment to restore.

## Release

`.github/workflows/release.yml` — manual trigger via GitHub Actions. Builds PDF and attaches as `resume.pdf` to a new release. Optional input: release name (defaults to `Month YYYY`).
