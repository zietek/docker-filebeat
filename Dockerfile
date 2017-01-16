FROM    bargenson/filebeat

# Here we use several hacks collected from https://github.com/gliderlabs/docker-alpine/issues/11:
# # 1. install GLibc (which is not the cleanest solution at all)

RUN     apk add --update jq

ADD     docker-entrypoint.sh    /entrypoint.sh
RUN     chmod +x /entrypoint.sh

ENTRYPOINT  ["/entrypoint.sh"]
CMD         ["start"]
