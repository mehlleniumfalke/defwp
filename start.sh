#!/bin/bash

# start the mysqldb, wordpress and wpcli
docker-compose up -d

# sleep until alls containers are up
sleep 10

# arrays for plugins to install/uninstall
plugins=()
version=()
uninstall=()

plugins[0]=jetpack
versions[0]=latest

uninstall[0]=hello
uninstall[1]=akismet

echo "Please visit: "http://localhost:8000" and install wordpress. When you are done come back here and hit ENTER. If your wordpress is already installed just hit ENTER now."
read enter

# INSTALL PLUGINS from arrays plugins[]/versions[]
## add --version="${versions[$i]}" for pinned versions after "install"
for (( i=0; i<${#plugins[*]}; i++ )); do
	docker exec ${PWD##*/}_wpcli_1 wp plugin install ${plugins[$i]} 
done

# UNINSTALL PLUGINS from array uninstall[]
## uninstall unecessary standard plugins
for (( i=0; i<${#uninstall[*]}; i++ )); do
	docker exec ${PWD##*/}_wpcli_1 wp plugin uninstall ${uninstall[$i]} 
done

docker-compose logs -f
