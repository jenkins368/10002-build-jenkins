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
 

# ./gradlew localDistro
# ./gradlew :distribution:archives:linux-tar:assembl

# tree -L 3
# ls -al build/distribution/local/

# cd build/distribution/local/

# tar cf elasticsearch-8.13.4-SNAPSHOT.tar elasticsearch-8.13.4-SNAPSHOT
# ls -al  
# file elasticsearch-8.13.4-SNAPSHOT.tar
# cp elasticsearch-8.13.4-SNAPSHOT.tar ~/
# cd ~/elasticsearch
# file build/distribution/local/elasticsearch-8.13.4-SNAPSHOT.tar
# file ~/elasticsearch-8.13.4-SNAPSHOT.tar
