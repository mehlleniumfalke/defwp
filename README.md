# defwp - the definitive wordpress developement environment
Fast and reliable docker environment for wordpress developement.

## Dependencies
defwp uses `docker` and `docker-compose`.

## Installation
Clone the repository:
```
git clone https://github.com/mehlleniumfalke/defwp.git
```

Start the shell script:
```
./start.sh
```

## Version Control
Wordpress Version can be pinned down in `docker-compose.yml`
Default: `latest`

Plugin Versions can be pinned down in `start.sh`
Default: `latest`

## Plugin Installation
Install Plugins via the start.sh script. Just add them to the array like this:
```
plugins[0]=jetpack
versions[0]=latest
```

## Theme & Plugin Developement

The theme folder is mounted at `/wp-content/themes/the_theme`, rename as u like.
The plugin folder is mounted at `/wp-content/plugins`, leave as it is.
Files in this directorys will be synced to the wordpress image. 

You can work on this files and changes will be immediatly present in the wordpress installation.

### Start Developement
```
./start.sh
```
