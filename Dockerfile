FROM alpine:latest
MAINTAINER LanCache.Net Team <team@lancache.net>

ENV UPSTREAM_DNS 8.8.8.8 8.8.4.4
ENV NETFLIX_US us.netflix.com

RUN	apk update \
	&& apk add sniproxy

COPY overlay/ /

RUN	chmod 755 /scripts/*

EXPOSE 443

ENTRYPOINT ["/scripts/bootstrap.sh"]
