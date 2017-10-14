# defwp - docker :heart: wordpress
:rocket:Fast and reliable :whale: environment for wordpress developement.

[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)]() [![WordPress](https://img.shields.io/wordpress/v/akismet.svg)]()

## Description
defwp is a docker+wordpress+gulp starter. No in depth config is necessary. It starts a
complete docker environment with a database and the folders u need to develop. Also it starts
a build pipeline to compile and copy your assets to the right place.
Just say wich plugins and versions you want, defwp will do the rest. Hop in and
develop fantastic new themes and plugins for wordpress.

defwp utilizes `docker`, `docker-compose`, `gulp`, `npm`, `ẁordpress` & `wp-cli`.

## Prerequisites
`docker`, `docker-compose` & `npm` have to be installed before you go on.

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

## Use
```
./start.sh
```

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
Wordpress version can be pinned down in `docker-compose.yml`
Default: `latest`

### Plugins
Plugin versions can be pinned down in `start.sh`
Default: `latest`


## Theme & Plugin Developement

The theme folder is mounted at `/wp-content/themes/the_theme`, rename as u like.
The plugin folder is mounted at `/wp-content/plugins`, leave as it is.
Files in this directorys will be synced to the wordpress image.

The Templates are stored in `/wp-content/themes/the_theme/assets/templates`. Yeah really.
Gulp will copy them to their default location.
Non-Template files, like `functions.php` can be stored at their default location.

### FIY: [THE WHY](https://visible.vc/engineering/asset-pipeline-for-wordpress-theme-development/)

You can work on this files and changes will be immediatly present in the running wordpress installation.

If you want to develop a Plugin just add:
```
- ./wp-content/plugins/your_plugin:/var/www/html/wp-content/plugins/your_plugin
```
to the `docker-compose.yml` under "wordpress->volumes".
And add the path (`./wp-content/plugins/your_plugin`) to your `.gitignore`.
This will mount the folder into the wordpress environment.

## Questions & Feedback
Send your feedback and questions to martin.mehl@webvariants.de

## Whats next?
- stop script
- prompts for wp core install
- add understrap as option