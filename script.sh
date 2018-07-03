echo "Building Docker Image"
docker build -t shahmeetk/static_site/static_site .
echo "Docker Image built"

echo "Removing Previous Running Container"
#docker_cont=$(docker ps -aq --filter name=cont01)
#docker rm -f $docker_cont
echo "Container Removed"

echo "Running the Docker Image"
docker run -d --name cont01 -p 82:80 shahmeetk/static_site
echo "Docker Image Started"

echo "Pushing Image to Docker Hub"
docker push shahmeetk/static_site
echo "Docker Image Pushed"
