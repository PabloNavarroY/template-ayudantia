#!/usr/bin/env sh

folder="ayudantia$1"

mkdir -p "$folder"

if [ -f "$folder/enunciado.tex" ]; then
    echo "$folder/enunciado.tex ya existe"
else
    cp "template/enunciado.tex" "$folder"
    sed -i 's/NUMM/'"$1"'/' "$folder/enunciado.tex"
fi

if [ -f "$folder/solucion.tex" ]; then
    echo "$folder/solucion.tex ya existe"
else
    cp "template/solucion.tex" "$folder"
    sed -i 's/NUMM/'"$1"'/' "$folder/solucion.tex"
fi

ln -rs "template/.latexmkrc" "$folder/.latexmkrc"
