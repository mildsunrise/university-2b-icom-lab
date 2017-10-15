#!/bin/bash
cd "$(dirname $0)"

# Build things
for l in T*.tex; do
  latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdf -shell-escape $l < /dev/null || exit 1
done

# Clean temp files
rm -rf *.aux *.bbl *.blg *.idx *.ind *.lof *.lot *.out *.toc *.acn *.acr *.alg *.glg *.glo *.gls *.ist *.fls *.log *.fdb_latexmk *.synctex.gz _minted-*
