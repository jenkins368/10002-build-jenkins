#!/usr/bin/env bash
set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

echo "hello world"
cd ~
git clone --depth 1 https://github.com/jenkinsci/jenkins.git
cd jenkins
ls -al


mvn -am -pl war,bom -Pquick-build clean install

ls -al
cd war
cd target
cp jenkins.war ~/
file ~/jenkins.war



