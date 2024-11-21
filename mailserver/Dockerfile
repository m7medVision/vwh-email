FROM boky/postfix

ENV ALLOW_EMPTY_SENDER_DOMAINS=true
COPY main.cf /etc/postfix/main.cf
COPY virtual_regexp /etc/postfix/virtual_regexp
COPY forward-to-webhook.sh /usr/local/bin/forward-to-webhook.sh
RUN chmod +x /usr/local/bin/forward-to-webhook.sh