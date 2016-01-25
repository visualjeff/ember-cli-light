ember-cli-light
===============

##Ember-cli-light docker image includes:

* Alpine Linux
* Bash, git, curl, wget
* nodejs v4.2.6-r0 and npm
* Ember-cli v1.13.15, bower & phantomjs

Size of the image is roughly: 262mb.

To run the container interactively:

> docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli-light:latest /bin/bash


