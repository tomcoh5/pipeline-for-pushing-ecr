#!/bin/bash
dir=`echo $url |  sed 's:.*/::'`
DIR=${dir::-4}
pathtodir="/var/jenkins_home/workspace/pipeline-ecr/$DIR"
if [ -d "$pathtodir" ]; then
	echo "removing directory and cloning it again"
	rm -rIf $pathtodir
else
	git clone $url
fi

cd $pathtodir
docker build -t $name .
if [ $? -eq 0 ];then
	echo " build succeed "
else
	echo " build failed ... "
fi
