#!/bin/sh
# this assumes you created the openshift directory in your home directory
# modify the script if this is not the case
 
meteor build prod
cp prod/mymeteordemo.tar.gz ~/openshift
rm prod/mymeteordemo.tar.gz
cd ~/openshift
tar -xvf mymeteordemo.tar.gz -s '/^bundle//'
rm mymeteordemo.tar.gz
git add .
git commit -am "a change"
git push