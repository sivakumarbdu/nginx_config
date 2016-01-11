#!/bin/bash
sudo apt-get update
sudo apt-get install build-essential
cd ~/ && mkdir .rbenv
wget https://github.com/rbenv/rbenv/archive/master.zip
sudo apt-get install unzip
unzip master.zip
cd rbenv-master
mv * .rbenv
 cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

rm master.zip
rm -r rbenv-master
echo "installing plugin"

cd .rbenv && mkdir plugins
mkdir plugins/ruby-build
wget https://github.com/rbenv/ruby-build/archive/master.zip
sudo apt-get install unzip
unzip master.zip
cd ruby-build-master
mv * ~/.rbenv/plugins/ruby-build

echo "Exit the terminal and open again"
