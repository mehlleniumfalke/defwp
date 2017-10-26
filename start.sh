#!/bin/bash

# start the mysqldb, wordpress and wpcli
docker-compose up -d

# sleep until alls containers are up
sleep 10

# arrays for plugins to install/uninstall
# the slugs can be found in the wp plugin repository url (https://de.wordpress.org/plugins/ ---> threewp-broadcast  <---/)
plugins=()
version=()
uninstall=()

plugins[0]=jetpack
versions[0]=latest

plugins[1]=threewp-broadcast
versions[1]=40.1

uninstall[0]=hello
uninstall[1]=akismet

# Do Wordpress core installation (will be jumped if it is already installed)
docker exec ${PWD##*/}_wpcli_1 wp core install --title="DevEnv" --admin_email="foo@bar.com" --url="http://localhost:8008" --path="/var/www/html" --admin_user="admin"

# INSTALL PLUGINS from arrays plugins[]/versions[]
for (( i=0; i<${#plugins[*]}; i++ )); do
	docker exec ${PWD##*/}_wpcli_1 wp plugin install --version="${versions[$i]}" ${plugins[$i]} 
done

# UNINSTALL PLUGINS from array uninstall[]
for (( i=0; i<${#uninstall[*]}; i++ )); do
	docker exec ${PWD##*/}_wpcli_1 wp plugin uninstall ${uninstall[$i]} 
done

gulp