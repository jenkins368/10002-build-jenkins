#!/usr/bin/env bash
set -x
export CMD_PATH=$(cd `dirname $0`; pwd)
export PROJECT_NAME="${CMD_PATH##*/}"
echo $PROJECT_NAME
cd $CMD_PATH

echo "hello world"
cd ~
git clone -b dev_240518_01 --depth 1 https://github.com/jenkinsci/jenkins.git
cd jenkinsci
ls -al

mvn  install  -Dmaven.test.skip=true
ls -al