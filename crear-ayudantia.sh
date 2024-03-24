#!/usr/bin/env sh

folder="ayudantia$1"
enun="enunciado$1"
solu="solucion$1"

mkdir -p "$folder"

if [ -f "$folder/$enun.tex" ]; then
    echo "$folder/$enun.tex ya existe"
else
    cp -T "template/enunciado.tex" "$folder/$enun.tex"
    sed -i 's/NUMM/'"$1"'/' "$folder/$enun.tex"
fi

if [ -f "$folder/$solu.tex" ]; then
    echo "$folder/$solu.tex ya existe"
else
    cp -T "template/solucion.tex" "$folder/$solu.tex"
    sed -i 's/NUMM/'"$1"'/' "$folder/$solu.tex"
fi

ln -rs "template/.latexmkrc" "$folder/.latexmkrc"
