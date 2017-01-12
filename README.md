# test
docker build -t ambassador .  
docker run --rm  --privileged  --name ambassador ambassador
docker run --rm  --net=container:ambassador XX