#!/bin/bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
# cp files/main.pdf cv.pdf
git config --global user.email "ramusdmitry@gmail.com"
git config --global user.name "Dmitry Ramus"
