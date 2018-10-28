# xori-docker
A docker container for Xori (https://github.com/endgameinc/xori)

## Run Xori
___
### Using docker-compose
> docker-compose up

then go to http://localhost:3000/
___
### Without docker-compose

Build docker container :
> docker build . -t xori

Run xori contianer :  
> docker run -P xori
* -P will expose ports 3000/tcp and 5000/tcp
* Use docker ps to see where are those ports being forwarded to on your localhost


