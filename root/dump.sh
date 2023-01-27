#!/bin/sh

##TODO need move this to s6, oneshot, wait for dind mod

##TODO if ls /data/dump.sql.gz && !$DOCKER_IMAGE
## as root ALTER USER $MYSQL_USER@$MYSQL_HOST ACCOUNT LOCK;
## import mysql -uroot -p$MYSQL_ROOT_PASSWORD -h $MYSQL_HOST $MYSQL_DATABASE
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
docker image ls
docker run --rm --entrypoint ls $DOCKER_REGISTRY/$DOCKER_IMAGE -al /data/
