#!/bin/bash
# export_notebooks.sh
# Converts all project notebooks to HTML into the docs/ folder.
# Run from the project root directory.
# Uses the Python 3.13 Store installation explicitly to avoid Python 3.14 conflicts.

umask 022

NBCONVERT="PARENT_DIRECTORY/jupyter-nbconvert"

echo "Wall Street Quants -- Notebook Export"
echo "======================================"

mkdir -p docs

NOTEBOOKS=(
    "project/000_overview.ipynb"
    "project/notebooks/001_download.ipynb"
    "project/notebooks/002_enrich.ipynb"
    "project/notebooks/003_analysis.ipynb"
    "project/notebooks/003a_regime_classification.ipynb"
    "project/notebooks/004_strategy.ipynb"
    "project/notebooks/005_backtest.ipynb"
    "project/006_writeup.ipynb"
)

for nb in "${NOTEBOOKS[@]}"; do
    name=$(basename "$nb" .ipynb)
    echo "Converting: $name..."
    $NBCONVERT --to html "$nb" \
        --output-dir docs \
        --output "${name}.html" \
    && echo "  --> docs/${name}.html" \
    || echo "  --> HTML FAILED: $name"
done

echo ""
echo "Done. HTML files in docs/"
echo ""
ls -la docs/*.html 2>/dev/null || echo "  (no files found)"