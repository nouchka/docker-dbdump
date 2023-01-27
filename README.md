# docker-dbdump
[![Docker pull](https://img.shields.io/docker/pulls/nouchka/dbdump)](https://hub.docker.com/r/nouchka/dbdump/)
[![Docker stars](https://img.shields.io/docker/stars/nouchka/dbdump)](https://hub.docker.com/r/nouchka/dbdump/)
[![Build Status](https://gitlab.com/japromis/docker-dbdump/badges/master/pipeline.svg)](https://gitlab.com/japromis/docker-dbdump/pipelines)
[![Docker size](https://img.shields.io/docker/image-size/nouchka/dbdump/latest)](https://hub.docker.com/r/nouchka/dbdump/)



## Main idea

Backup database is a tidious task. When working with other teams members, sharing dump is always problematic because we need somebody to generate the dump, find a way to share it. At the end, sometimes dump finish in git taking a lot of place, it requires always action to make the dump fresh, so on.

With this image, I want:

+   docker service generating dump if a flag is activated (I want a dump) (have a cron??)
+   dump file is place in a docker image, pushed into a registry (I want docker registry to host the dump) (need dind, check image building itself loop??)
+   bonus: image name can contains date variable (I want to keep one dump per month) 
+   docker service importing dump automatically at start if a flag is activated (I want latest fresh data every time I launch)
+   docker service importing dump automatically if a check is not passed (I want to init a empty database if it's a fresh database)

Variables:
+   connexion to database
+   type of database (mysql or pgsql)
+   docker image with registry path
+   generate/push dump flag or registry path as flag
+   import_always
+   import_check flag or request to check

Links:
+   https://hub.docker.com/r/linuxserver/mariadb/
+   https://github.com/linuxserver/docker-mods/tree/universal-docker-in-docker
