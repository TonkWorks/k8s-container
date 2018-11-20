#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

docker save $(docker images -q) -o ${DIR}/mydockersimages.tar
docker images | sed '1d' | awk '{print $1 " " $2 " " $3}' > ${DIR}/mydockersimages.list
