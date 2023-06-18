FROM ubuntu:23.10
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN apt-get update && apt-get install -y postgresql-client gawk inetutils-ping
CMD ["/run.sh"]