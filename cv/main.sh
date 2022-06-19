cd cv
xelatex -interaction=nonstopmode -halt-on-error main.tex
cd ..

cp cv/main.pdf cv.pdf
git config --global user.email "ramusdmitry@gmail.com"
git config --global user.name "Dmitry Ramus"
