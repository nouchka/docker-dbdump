FROM docker:rc-cli

COPY root/ /
RUN apk add mysql-client && \
	chmod +x /dump.sh

ENTRYPOINT /dump.sh
