Ghost for Docker
=====

Docker container for the [Ghost](http://ghost.org/about) blogging platform.

Contains a couple of customisations for persistent data storage & [N-Coded](https://github.com/polygonix/N-Coded) theme.

## Requirements

* Docker.io installed
* Firewall port 49186 open if not proxying from a web server such as Apache or Nginx.

## Usage

    $ git clone https://github.com/Jabbslad/ghost.git
    $ cd ghost # tweak config.js as required
    $ sh setup.sh
    $ sudo docker build -t jabbslad/ghost .
    $ sudo docker run -p 49186:2368 -d -v /tmp/docker/data:/src/content/data -v /tmp/docker/images:/src/content/images -t jabbslad/ghost

Open `http://<hostname>:49186/ghost` in browser

## To Do

* Parameterize email configuration
* Move away from SQLite for production
* Nginx proxying
