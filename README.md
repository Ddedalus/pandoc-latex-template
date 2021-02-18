# pandoc-latex-template
Template for a math document written in pandoc markdown and rendered in LaTeX

# Usage
1. .md -> .tex
   ```bash
   ./make example.tex
   ```
2. .tex -> .pdf
   ```bash
   latexmk example.tex
   ```
3. `latexmk flags:
    - `-g` to clean up auxillary files before start
    - `-gg` to clean up the outputs as well before start
    - `-c` / `-C` just the cleaning, no compilation
    - `-pvc` continuous preview: watch for source file changes
