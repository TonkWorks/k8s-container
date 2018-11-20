
#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

docker load -i ${DIR}/mydockersimages.tar
while read REPOSITORY TAG IMAGE_ID
do
        echo "== Tagging $REPOSITORY $TAG $IMAGE_ID =="
        docker tag "$IMAGE_ID" "$REPOSITORY:$TAG"
done < ${DIR}/mydockersimages.list