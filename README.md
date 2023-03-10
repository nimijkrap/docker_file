# build docker image wih Dockerfile
```
$ docker build -t imagename:tag .
```

# run docker container 
-v option : binding the local directory 
```
$ docker run -d -ti --name [container name] --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -v /home/jpark/work:/home/jpark/work [docker image name]:[tag]
```

# log in to the Docker container as root (ID=0)
```
docker exec -u 0 -it [container name] bash
```
