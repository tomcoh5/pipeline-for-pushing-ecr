#!/bin/bash
cd /var/jenkins_home/pipeline-for-pushing-to-ecr
cluster='flask-up'
ecs-cli compose up --create-log-groups --cluster-config $cluster  --ecs-profile $cluster-profile
#ecs-cli compose scale 2 --cluster-config $name  --ecs-proile $name-profile
