#!/bin/bash

set -e

# Download and install Armory v0.96.0 plus prerequisites
LATEST="https://github.com/goatpig/BitcoinArmory/releases/download/v0.96/armory_0.96-gcc5.4_amd64.deb"

curl -LfsS --retry 10 -o 'armory.deb' "$LATEST"

sudo apt-get -q update
sudo apt-get -yq install gdebi-core
sudo gdebi -nq armory.deb

# Download, compile, and install prerequisites for bitcoinj wallets
pip3 install -r requirements.txt