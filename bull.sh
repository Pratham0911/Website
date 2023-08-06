ls
docker images
docker rmi -f maria
docker ps
docker kill s2
docker build -t mariawe .
docker images
docker run -itd -p 80:80 --name s3 maria
