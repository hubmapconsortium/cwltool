#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'linux' ]]; then
    wget -O- http://neuro.debian.net/lists/trusty.us-nh.full | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list;
    sudo apt-key add .travis.singularity_key.txt;
    sudo apt-get update;
    sudo apt-get install -y singularity-container;
elif [[ $TRAVIS_OS_NAME == "osx" ]]; then
    pyenv install $PYENV_VERSION
    python --version
    brew cask install docker
    open /Applications/Docker.app
fi