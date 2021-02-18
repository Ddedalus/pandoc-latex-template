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
    - `-norc` disable configuration file (`./latexmkrc`)

## VS Code config
Replace the path to pandoc-theoremnos as needed:
```json
    "markdown-preview-enhanced.usePandocParser": true,
    "markdown-preview-enhanced.pandocArguments": "--filter=C:\\Users\\hbere\\Anaconda3\\Scripts\\pandoc-theoremnos.exe, --filter=pandoc-crossref, --citeproc, --wrap=preserve, --biblatex, --template=bodyonly.html",
```