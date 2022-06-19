FROM debian:10.1

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

COPY cv/ /
RUN ls -lah
RUN chmod +x "main.sh"
CMD ["main.sh"]


