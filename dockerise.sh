#!/bin/sh
# Dockerise this project

# Build the SSH Server
docker build -f OpenSSHDockerfile -t opensshserver .

#Usage
#docker run -d --rm -p 1088:22 opensshserver
#docker run -it --rm -p 1088:22 opensshserver bash
#ssh root@localhost -p 1088


#Build Base
#docker build -f BaseDockerfile -t demoopensshserver .

# Usage
#docker run -d --rm -p 1088:22 demoopensshserver
#docker run -it --rm -p 1088:22 demoopensshserver bash
#ssh demo@localhost -p 1088
