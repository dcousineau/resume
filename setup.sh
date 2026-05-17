#!/usr/bin/env bash
set -euo pipefail

if [[ "$(uname)" != "Darwin" ]]; then
    echo "System setup not yet configured for $(uname)."
    echo "Please consider contributing a fix: https://github.com/dcousineau/resume"
    exit 1
fi

echo "Installing BasicTeX..."
brew install --cask basictex
eval "$(/usr/libexec/path_helper)"

echo "Installing tex-fmt..."
brew install tex-fmt

echo "Updating tlmgr..."
sudo tlmgr update --self

echo "Installing required LaTeX packages..."
sudo tlmgr install latexmk koma-script geometry setspace xifthen ifmtarg enumitem stackengine hyperref titlesec marvosym soul makecell lastpage ec cm-super

echo "Updating font maps..."
sudo /Library/TeX/texbin/updmap-sys

echo "Done. Restart terminal (or run: eval \"\$(/usr/libexec/path_helper)\") then build with: pdflatex resume.tex"
