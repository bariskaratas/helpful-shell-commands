# Stop the container(s) using the following command:
docker-compose down

# stop all running containers
docker stop $(docker ps -a -q)

# Delete all containers using the following command:
docker rm -f $(docker ps -a -q)

# Delete all volumes using the following command:
docker volume rm $(docker volume ls -q)

# Restart the containers using the following command:
docker-compose up -d
