# Usage
在contianerXX里面想翻墙怎么办

1. modify config in ss.conf and start.sh
2. docker build -t ambassador .  
3. docker run -d --rm  --privileged  --name ambassador ambassador
4. test by : docker run --rm  --net=container:ambassador contianerXX
