#!/bin/bash
#
# This script is run by the dockerfile during the docker build.
#

set -ex

echo 'deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo xenial main' | sudo tee /etc/apt/sources.list.d/realsense-public.list

sudo apt-key adv --keyserver keys.gnupg.net --recv-key 6F3EFCDE

apt-get update

# Removed packages
#libqt4-dev \
#libvtk5-dev \
#libvtk5-qt4-dev \
#python-vtk \
#libqwt-dev \

apt-get install -y \
  bash-completion \
  build-essential \
  cmake \
  freeglut3-dev \
  git \
  libboost-all-dev \
  libglew-dev \
  libjpeg-dev \
  libeigen3-dev \
  libopencv-dev \
  libopenni2-dev \
  libqhull-dev \
  qtbase5-gles-dev\
  libqwt-qt5-dev \
  libsuitesparse-dev \
  libudev-dev \
  libusb-1.0-0-dev \
  libvtk6-dev \
  libvtk6-java \
  tcl-vtk6 \
  libqt5webkit5 \
  libqt5webkit5-dev \
  libqt5x11extras5-dev \
  libqt5x11extras5 \
  libvtk6.2-qt \
  libvtk6-qt-dev \
  qtdeclarative5-dev \
  libqt5quicktest5 \
  mesa-utils \
  openjdk-8-jdk \
  zlib1g-dev \
  libyaml-cpp-dev \
  python-dev \
  python-matplotlib \
  python-numpy \
  python-pip \
  python-scipy \
  python-vtk6 \
  python-yaml \
  librealsense2-dkms \
  librealsense2-utils \
  librealsense2-dev \
  librealsense2-dbg

apt-get -y upgrade

  # optional cleanup to make the docker image smaller
  # rm -rf /var/lib/apt/lists/*
