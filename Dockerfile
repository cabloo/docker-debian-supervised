FROM debian:8

RUN apt-get update -y 2>/dev/null > /dev/null
RUN apt-get install -y supervisor 2> /dev/null > /dev/null
ENTRYPOINT ["supervisord", "--nodaemon", "-c", "/etc/supervisor/supervisord.conf"]
