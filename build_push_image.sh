# build image ites-app tag v1 dari Dockerfile
docker build -t item-app:v1 .

# show list semua docker image
docker images

# push docker image ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u dimasoktanugraha --password-stdin
docker tag item-app:v1 dimasoktanugraha/item-app:v1
docker push dimasoktanugraha/item-app:v1