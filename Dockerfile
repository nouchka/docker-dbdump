FROM ghcr.io/linuxserver/baseimage-alpine:edge

ENV DOCKER_MODS=linuxserver/mods:universal-docker-in-docker
COPY root/ /
# hadolint ignore=DL3018
RUN apk --no-cache add mysql-client && \
	chmod +x /etc/s6-overlay/s6-rc.d/dump/run
