docker build . -f Dockerfile-builder -t emacs-builder
docker run --security-opt seccomp=unconfined --name emacs-builder emacs-builder bash -c "make && make install"
docker commit $(docker container ps -aq -f name=emacs-builder) emacs-builder:latest
docker build . -t yhiraki/emacs-minimal
