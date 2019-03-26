!/bin/bash 

echo Building docker image
docker build -t dash-project .

echo Running docker container...
docker run --rm -p 8888:8888 -v $(pwd):/home/jovyan/workspace dash-project