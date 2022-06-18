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
ADD files/* ./
RUN chmod 777 make.sh
RUN chmod +x files/fonts/lato/Lato-Lig.ttf
RUN chmod +x files/fonts/lato/Lato-Bla.ttf
RUN chmod +x files/fonts/lato/Lato-BlaIta.ttf
RUN chmod +x files/fonts/lato/Lato-Bol.ttf
RUN chmod +x files/fonts/lato/Lato-BolIta.ttf
RUN chmod +x files/fonts/lato/Lato-Hai.ttf
RUN chmod +x files/fonts/lato/Lato-HaiIta.ttf
RUN chmod +x files/fonts/lato/Lato-LigIta.ttf
RUN chmod +x files/fonts/lato/Lato-Reg.ttf
RUN chmod +x files/fonts/lato/Lato-RegIta.ttf

CMD ["./make.sh"]


