FROM ubuntu:latest

ENV ALLOW_EMPTY_SENDER_DOMAINS=true

RUN apt-get update && \
    apt-get install -y postfix procmail curl && \
    apt-get clean

COPY main.cf /etc/postfix/main.cf
COPY virtual_regexp /etc/postfix/virtual_regexp
COPY forward-to-webhook.sh /usr/local/bin/forward-to-webhook.sh
RUN chmod +x /usr/local/bin/forward-to-webhook.sh

RUN echo 'catchall: "|/usr/local/bin/forward-to-webhook.sh"' >> /etc/aliases
RUN newaliases

EXPOSE 25

CMD [ "postfix", "start-fg" ]