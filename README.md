# Usage
## 在contianerXX里面想翻墙怎么办
docker build -t ambassador .  
docker run --rm  --privileged  --name ambassador ambassador
docker run --rm  --net=container:ambassador contianerXX