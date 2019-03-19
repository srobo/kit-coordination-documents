#!/usr/bin/env bash

echo "Creating form for $1..."
cat form.tex | sed "s/##TLA##/$1/" | pandoc -sf latex -o $1.pdf --verbose
