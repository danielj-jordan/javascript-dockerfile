# Javascript Docker Container

This project is a defines a docker container that can be used to complete
javascript exercises from [Exercism](http://exercism.io) or to contribute to the javascript tract of
Exercism.

This container includes:
* ubuntu base container
* node 4.x
* jasmine
* eslint with all the required plug-ins

###
Prerequisites

You must have Docker installed on your computer.   Get it at [Docker](http://www.docker.com)  

### Installing

Create your container

```
docker build -t js-image -f  javascript.dockerfile .
```

After the container is created, you can start it.   This command starts the container
and maps a projects folder in user directory to /projects in docker container

```
docker run -it --rm -v ~/projects:/projects -h js --name javascript js-image
```
