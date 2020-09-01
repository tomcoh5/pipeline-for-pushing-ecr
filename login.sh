#!/bin/bash
aws ecr get-login-password --region $region  | docker login --username AWS --password-stdin $userid.dkr.ecr.$region.amazonaws.com

aws ecr delete-repository \
	--repository-name $name \
	--force

aws ecr create-repository \
    --repository-name $name \
    --image-scanning-configuration scanOnPush=true \
    --region $region

docker tag $name  $userid.dkr.ecr.$region.amazonaws.com/$name
image_name="$userid.dkr.ecr.$region.amazonaws.com/$name:latest"
env="/var/jenkins_home/pipeline-for-pushing-to-ecr/.env"
if [ ! -f $env ];then
	touch $env
else
	echo "" > $env
fi
echo "" > $env
echo "image_name=$image_name" >> $env


docker push $userid.dkr.ecr.$region.amazonaws.com/$name
