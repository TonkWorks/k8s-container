# Description
Kubernetes running in a DIND container

## To run
```
 docker run --rm -it -p 8001:8001 -p 80:80 -p 443:443 --privileged --name aa tonkworks/k8s-container
```

Adapted from https://github.com/argoproj-archive/kink