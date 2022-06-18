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

COPY files/* ./
RUN chmod 777 make.sh
RUN chmod +x /usr/share/fonts/WindowsFonts
CMD ["./make.sh"]


