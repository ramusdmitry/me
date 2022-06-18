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
RUN echo "after copy"
RUN ls -lah
ADD files/* ./
RUN echo "after add"
RUN ls -lah
RUN chmod 777 make.sh
RUN chmod +x lato/Lato-Lig.ttf
RUN chmod +x lato/Lato-Bla.ttf
RUN chmod +x Lato-BlaIta.ttf
RUN chmod +x Lato-Bol.ttf
RUN chmod +x Lato-BolIta.ttf
RUN chmod +x Lato-Hai.ttf
RUN chmod +x Lato-HaiIta.ttf
RUN chmod +x Lato-LigIta.ttf
RUN chmod +x Lato-Reg.ttf
RUN chmod +x Lato-RegIta.ttf

CMD ["./make.sh"]


