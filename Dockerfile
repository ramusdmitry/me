FROM debian:10.1

COPY files/* ./
RUN echo "after copy"
RUN ls -lah
ADD files/* ./
RUN echo "after add"
RUN ls -lah
RUN chmod 777 make.sh
RUN chmod -R 777 lato
RUN chmod -R 777 raleway 

CMD ["./make.sh"]


