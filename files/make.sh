#!/bin/bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
cd ..
# cp files/main.pdf cv.pdf
git config --gloabl user.email "ramusdmitry@gmail.com"
git config --global user.name "Dmitry Ramus"
