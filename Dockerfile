FROM debian:10.1

RUN apt-get update && apt-get install --yes --no-install-recommends \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-latex-extra \
  texlive-fonts-extra \
  texlive-base \
  texlive-science \
  cm-super \
  texlive-generic-extra \
  git \
  texlive-xetex

COPY files/main.tex main.tex
COPY files/resume.cls resume.cls
COPY files/make.sh make.sh
RUN chmod 777 make.sh
CMD ["./make.sh"]


