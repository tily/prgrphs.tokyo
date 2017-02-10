#!/bin/bash

## Install packages
sudo yum install -y git

## Setup git
git config --global user.email "tidnlyam@gmail.com"
git config --global user.name tily

## Ensure repositories are present
cd ~/
for x in prgrphs.tokyo prgrphs.tokyo-private hvtg relayr prgrphs prgrphs2 nnade decks; do
  if [ ! -e ~/$x ]; then
    git clone https://github.com/tily/$x.git ~/$x
  fi
done

## Ensure docker-compose executable is present
if [ ! -e /usr/local/bin/docker-compose ]; then
  sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
fi

## Customize detach keys (http://qiita.com/takahiroki/items/60ec916383025160fbb8)
mkdir -p ~/.docker/
echo '{"detachKeys":  "ctrl-\\"}' > ~/.docker/config.json
