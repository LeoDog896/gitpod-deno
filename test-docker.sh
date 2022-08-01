sh clean.sh
sh run.sh

docker build -f .gitpod.Dockerfile -t gitpod-dockerfile-test .
docker run -it gitpod-dockerfile-test bash

sh clean.sh