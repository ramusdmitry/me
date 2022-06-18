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
COPY files/make.sh make.sh
RUN ls
RUN chmod 777 make.sh
RUN ls -lah
CMD ["./make.sh"]


