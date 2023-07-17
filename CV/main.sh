cd CV
xelatex -interaction=nonstopmode -halt-on-error resume.tex
cd ..
echo startcopy
cp CV/main.pdf resume.pdf
git config --global user.email "ramusdmitry@gmail.com"
git config --global user.name "Dmitry Ramus"
