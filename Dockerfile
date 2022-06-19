FROM debian:10.2

RUN apt-get update && apt-get install --yes --no-install-recommends \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-latex-extra \
  texlive-fonts-extra \
  texlive-base \
  texlive-science \
  cm-super \
  git \
  texlive-generic-extra \
  texlive-xetex

COPY CV/ /
RUN chmod +x main.sh
CMD /main.sh
