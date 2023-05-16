FROM squidfunk/mkdocs-material:latest
LABEL maintainer="Ivan Ivanov"

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
