FROM ubuntu:18.04

WORKDIR /workdir

RUN useradd --uid  1000 --system --no-create-home  nonroot

RUN  apt-get update  && apt-get upgrade -y && apt-get clean

RUN apt-get install -y                                 \
        curl                                           \
        git                                            \
        unzip                                          \
        git-lfs  \
        maven                                          \
        build-essential                                \
        zip                                            \
        autoconf                                       \
        automake                                       \
        autotools-dev                                  \
        binfmt-support                                 \
        clang                                          \
        gdb                                            \
        libtool                                        \
        llvm                                           \
        mercurial                                      \
        patch                                          \
        software-properties-common                     \
        subversion                                     \
        wget                                           \
        xz-utils                                       \
        cmake                                          \
        ca-certificates                                \
        bzr                                            \
        openssh-client                                 \
        gnupg                                          \
        libprotobuf-dev                                \
        protobuf-compiler                              \
        ninja-build                                    \
        libssl-dev                                     \
&& apt-get clean

