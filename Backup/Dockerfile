FROM alpine:latest

RUN apk add --no-cache tzdata bash sqlite

ENV TZ=UTC

COPY backup.sh /backup.sh

RUN chmod +x /backup.sh

RUN echo "0 * * * * /backup.sh >> /var/log/cron.log 2>&1" > /etc/crontabs/root

CMD ["crond", "-f", "-L", "/var/log/cron.log"]
