# defwp - docker :heart: wordpress
:rocket:Fast and reliable :whale: environment for wordpress developement.

## Description
defwp is a docker+wordpress+gulp starter. No in depth config is necessary.
Just say wich plugins and versions you want, defwp will do the rest. Just hop in and
develop fantastic new themes and plugins for wordpress.

## Prerequisites
defwp utilizes `docker`, `docker-compose`, `gulp`, `npm`, `ẁordpress` & `wp-cli`.


## Installation
1. Clone the repository:
```
git clone https://github.com/mehlleniumfalke/defwp.git
```

2. Install Developement Dependencies:
```
npm install
```

3. Start the script:
```
./start.sh
```
4. DONE!

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


## Version Control
### Wordpress
Wordpress Version can be pinned down in `docker-compose.yml`
Default: `latest`

### Plugins
Plugin Versions can be pinned down in `start.sh`
Default: `latest`


## Theme & Plugin Developement

The theme folder is mounted at `/wp-content/themes/the_theme`, rename as u like.
The plugin folder is mounted at `/wp-content/plugins`, leave as it is.
Files in this directorys will be synced to the wordpress image.

The Templates are stored in `/wp-content/themes/the_theme/assets/templates`, yeah really.
Gulp will copy them to their default location.
Non-Template files, like `functions.php` can be stored at their default location.

### FIY: [THE WHY](https://visible.vc/engineering/asset-pipeline-for-wordpress-theme-development/)

You can work on this files and changes will be immediatly present in the running wordpress installation.


### Start Developement
1. Start the environment:
```
./start.sh
```

## Questions & Feedback
Send your Feedback to martin.mehl@webvariants.de

## Whats next?
- stop script
- argument for theme naming
- jump standard wordpress installation