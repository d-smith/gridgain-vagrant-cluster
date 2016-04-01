#!/bin/sh
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker vagrant
docker pull gridgain/gridgain-com