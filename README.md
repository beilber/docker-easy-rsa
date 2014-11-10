Docker-easy-rsa
===============

# Description
Simple shell based CA utility on docker.

# Files

* Docker related
    * `Dockerfile` : Used for building Docker image.
* bash script
    * `env.cfg` : configuration for `build.sh` and `run.sh`
    * `build.sh` : a convinient script for building Docker image. 
    * `run.sh` : a convinient script for running Docker container.
* easy-rsa configuration
    * `easy-rsa.setting` : this file will be mounted as /opt/easy-rsa/vars when the container runs.

# LICENSE
[Don't Be a Dick Public License](http://dbad-license.org)
