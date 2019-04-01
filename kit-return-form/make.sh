#!/usr/bin/env bash

echo "Creating form for $1..."
mkdir -p $PWD/$1
sed "s/##TLA##/$1/" form.tex > $PWD/$1/form.tex
pdflatex -output-directory $PWD/$1 $PWD/$1/form.tex
cp $PWD/$1/form.pdf $PWD/$1.pdf
rm -rf $PWD/$1
