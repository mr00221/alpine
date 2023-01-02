FROM alpine

ADD crontab.txt /crontab.txt
ADD script.sh /script.sh
COPY entry.sh /entry.sh
RUN chmod 755 /script.sh /entry.sh
RUN apk --no-cache add curl
RUN /usr/bin/crontab /crontab.txt

CMD ["/entry.sh"]