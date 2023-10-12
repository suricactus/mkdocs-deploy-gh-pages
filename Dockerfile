FROM squidfunk/mkdocs-material:latest
LABEL maintainer="Ivan Ivanov"

COPY action.sh /action.sh

RUN apk add --no-cache bash build-base && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
