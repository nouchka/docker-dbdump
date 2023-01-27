#!/bin/sh

sleep 20
ls -al /data/
echo "Mysql dump"
mysqldump -uroot -p$MYSQL_ROOT_PASSWORD -h $MYSQL_HOST $MYSQL_DATABASE| gzip > /root/build/data/dump.sql.gz
ls -al /root/build/data/
cd /root/build
echo "Docker build"
docker build -t $DOCKER_REGISTRY/$DOCKER_IMAGE .
##echo $DOCKER_PASSWORD| /usr/local/bin/docker login $DOCKER_REGISTRY --username $DOCKER_USERNAME --password-stdin
echo docker push $DOCKER_REGISTRY/$DOCKER_IMAGE
docker push $DOCKER_REGISTRY/$DOCKER_IMAGE
docker rmi $DOCKER_REGISTRY/$DOCKER_IMAGE
