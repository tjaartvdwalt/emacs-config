# My Emacs config
This is my personal Emacs config. Feel free to fork this repository!

## Automatic installation of plugins
At startup the config checks whether the required plugins are installed, and installs all missing plugins.
There are 2 ways of installing plugins: through ELPA (the preferred way), or with el-get.

el-get can technically install plugins from ELPA repositories, but I prefer installing these plugins with package.el
el-get has the advantage of being able to install packages from source, so all plugins that aren't in the ELPA repositorygets installed that way.

ELPA plugins are defined in config/elpa.el
el-get plugins are defined in confg/el-get.el
