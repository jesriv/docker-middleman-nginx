# Docker Middleman Nginx on Alpine Linux

This is a Docker starting point for building Middleman projects and serving them through Nginx. 

## Before running the build

#### Private repos (skip if you're pulling from a public repo)
* Generate a new ssh key `ssh-keygen -t rsa` and specify a new path that won't overwrite your current one
* Add the `id_rsa` file into the `middleman` directory
* Add the `id_rsa.pub` file into your github or bitbucket repo

#### Repo location
* Update the `GIT_URL` environment variable in the `docker-compose.yml` file to point to your repo

## Build and run the containers
Run the following commands
* `docker-compose build`
* `docker-compose up -d`

## Install the project
Run `docker ps` to find the running container info and run the following commands. Replace _CONTAINER ID_ with the id for the `dockermiddlemannginx_site` container.
* `docker exec `_CONTAINER ID_` install-frontend.sh`
* `docker exec `_CONTAINER ID_` build-frontend.sh`

Visit your docker ip address to see the site. If you need to run the site on another port, update the webserver port in the `docker-compose.yml` file.