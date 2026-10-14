#!/bin/bash
set -e
set -x

# Initialize and update the ROS environment
rosdep update
sudo apt-get update 
rosdep install --from-paths . --ignore-src -r -i -y --rosdistro kilted


# Gazebo dependencies
#sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
#sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
#sudo apt update
#sudo apt install libgz-cmake5-dev


# FIXME: Why does not it install libgz-plugin2-dev libgz-common5-dev libgz-sim8-dev  ?
