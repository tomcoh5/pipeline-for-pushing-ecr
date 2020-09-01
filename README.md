# pipeline-for-pushing-to-ecr
## NOTES
1.make sure to have your aws access key and aws secret access key \n
2ץenter the url for your repo
3.you can edit "deploy.sh" to scale more containers
4.you can edit "ecs.sh" to change instance type 
5. make sure you have aws cli installed and ecs cli (dont configure them the pipeline will do it for you)
## Installation
1. first step is installing docker by:
```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
```
2.then building the docker image
```bash
docker build -t name-for-image .
```
3. run the jenkins-docker image
```bash
docker run -d -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock name-for-image
```
4.now go in to the browser and configure jenkins , create pipeline copy the pipeline and clone this repo

5. enter your credentials

6. run the pipeline
