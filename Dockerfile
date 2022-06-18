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
RUN chmod -R 777 lato
RUN chmod -R 777 raleway 
RUN ls -lah

CMD ["./make.sh"]


