FROM jenkinsci/jnlp-slave:alpine
MAINTAINER Steven Casagrande <stevencasagrande@gmail.com>

USER root

RUN apk --update --no-cache add docker sudo

COPY dockerd-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh && \
    addgroup jenkins docker

ENTRYPOINT ["dockerd-entrypoint.sh"]
