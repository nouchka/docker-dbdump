#!/bin/sh

ls -al /data/
mysqldump -uroot -p$MYSQL_ROOT_PASSWORD -h $MYSQL_HOST $MYSQL_DATABASE| gzip > /root/build/data/dump.sql.gz
cd /root/build
docker build -t dump .
##echo $DOCKER_PASSWORD| /usr/local/bin/docker login $DOCKER_REGISTRY --username $DOCKER_USERNAME --password-stdin
docker image tag dump $DOCKER_IMAGE
docker push $DOCKER_IMAGE
docker run --rm --entrypoint ls $DOCKER_IMAGE -al /data/
