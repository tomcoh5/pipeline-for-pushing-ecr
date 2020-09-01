# pipeline-for-pushing-to-ecr
## NOTES
make sure to have your aws access key and aws secret access key
enter the url for your repo
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
