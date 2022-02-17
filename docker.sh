# show local images
docker images

# pull an image
docker pull mcr.microsoft.com/hello-world

# tag an image
docker tag mcr.microsoft.com/hello-world <acrName>.azurecr.io/hello-world:v1

# push an image to acr
docker push <acrName>.azurecr.io/hello-world:v1

# see all processes
docker ps 

# see logs for a specific container 
docker logs -f <container-id>


## TROUBLESHOOTING ##

# Fix error => ERROR: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
