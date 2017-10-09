#!/bin/bash

# start the mysqldb, wordpress and wpcli
docker-compose up -d

sleep 10

# install necessary plugins
plugins=()
version=()

plugins[0]=jetpack
versions[0]=latest

plugins[1]=akismet
versions[1]=latest

#add --version="${versions[$i]}" for pinned versions after "install"
for (( i=0; i<${#plugins[*]}; i++ )); do
	docker exec ${PWD##*/}_wpcli_1 wp plugin install ${plugins[$i]} 
done
