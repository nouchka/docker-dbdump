FROM ghcr.io/linuxserver/baseimage-alpine:edge

ENV DOCKER_MODS=linuxserver/mods:universal-docker-in-docker
COPY root/ /
RUN apk add mysql-client && \
	chmod +x /dump.sh
