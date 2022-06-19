#!/bin/bash

cd cv
xelatex -interaction=nonstopmode -halt-on-error main.tex
cd ..
echo startcopy
cp cv/main.pdf cv.pdf
git config --global user.email "ramusdmitry@gmail.com"
git config --global user.name "Dmitry Ramus"
