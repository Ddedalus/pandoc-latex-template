param ($inp = 'deep.md', $output)

$pandoc_params = @(
    '--biblatex',
    '--filter=C:\Users\hbere\Anaconda3\Scripts\pandoc-theoremnos.exe',
    '--filter=pandoc-crossref',
    '--template=template.latex',
    '--wrap=preserve',
    '-s',
    '-f',
    'markdown+raw_tex+tex_math_dollars+citations-auto_identifiers+lists_without_preceding_blankline-latex_macros',
    '-i', $inp,
    '-t', 'latex',
    '--quiet'
)

$nl = [Environment]::NewLine

[Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8
$out = (pandoc @pandoc_params) -Join $nl

$fixed = $out -replace '\\item\s+', '  \item ' `
    -replace '\\tightlist\r\n', '' `
    -replace '\\\(', '$' `
    -replace '\\\)', '$' `
    -replace '\\\[\s*', ('$$$' + $nl + '  ') `
    -replace '\\\]', ($nl + '$$$') `
    -replace '(\r\n)?(\\protect)?\\hypertarget\{.+\}(\{\})?\{\%?\s*', $nl `
    -replace '\s*\}\\label', ($nl + '\label') `
    -replace ',height=\\textheight', ''

if ($output) {
}
else {
    $output = $inp -replace '.md', '.tex'
}
Write-Output $fixed > $output