[![Actions Status](https://github.com/riccardobl/buildenvs/workflows/Build%20Environments/badge.svg)](https://github.com/riccardobl/buildenvs/actions)

# Build environments 

### How to build locally

If you want to build the images locally for test and development, you will need a bash environment 
(eg any linux distribution with bash, macos, git|cywin|win bash on windows or windows 10 wsl) and docker.


Build and run
```bash
$ buildEnv="base" # java, android ...
$ bash make.sh build buildenvs $buildEnv
$ docker run --rm -it buildenvs:$buildEnv bash
```

Build and deploy to a docker registry
```bash
$ buildEnv="base" # java, android ...
$ bash make.sh build buildenvs $buildEnv NAMESPACE
$ build make.sh deploy buildenvs $buildEnv NAMESPACE REGISTRY_USER REGISTRY_PASSWORD REGISTRY_URL
```
