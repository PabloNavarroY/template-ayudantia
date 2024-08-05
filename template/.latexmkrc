@default_files = ('enunciado.tex', 'solucion.tex');
ensure_path( 'TEXINPUTS', '../', '../latex-stash//' );

# Outputs
$pdf_mode = 1;
$postscript_mode = 0;
$dvi_mode = 0;
