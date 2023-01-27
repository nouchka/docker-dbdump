FROM docker:dind

COPY root/ /
RUN apk add mysql-client && \
	chmod +x /dump.sh
