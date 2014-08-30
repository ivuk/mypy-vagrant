#!/bin/bash
#
# A bash script used in combination with Vagrant shell provider that sets up
# mypy from the Github repository
#

# Resynchronize the package index files
apt-get -qq update

# Install python3 and git
apt-get -qq install python3 git

# Clone the mypy repository from Github
su - vagrant -c "git clone https://github.com/JukkaL/mypy.git"

# Install mypy
cd mypy && python3 setup.py install
