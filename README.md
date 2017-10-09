# defwp - docker :heart: wordpress
:rocket:Fast and :whale:reliable docker environment for wordpress developement.


## Dependencies
defwp uses `docker`, `docker-compose`, `gulp` & `npm`.


## Installation
1. Clone the repository:
```
git clone https://github.com/mehlleniumfalke/defwp.git
```

2. Start the shell script:
```
./start.sh
```


## Version Control
### Wordpress
Wordpress Version can be pinned down in `docker-compose.yml`
Default: `latest`

### Plugins
Plugin Versions can be pinned down in `start.sh`
Default: `latest`


## Plugins
### Install
Install Plugins via the `start.sh` script. Just add them to the array like this:
```
plugins[0]=jetpack
versions[0]=latest
```

### Uninstall
Uninstall Plugins via the `start.sh` script. Just add them to the array like this:
```
uninstall[0]=hello
uninstall[1]=akismet
```


## Theme & Plugin Developement

The theme folder is mounted at `/wp-content/themes/the_theme`, rename as u like.
The plugin folder is mounted at `/wp-content/plugins`, leave as it is.
Files in this directorys will be synced to the wordpress image. 

You can work on this files and changes will be immediatly present in the running wordpress installation.


### Start Developement
```
./start.sh
```
