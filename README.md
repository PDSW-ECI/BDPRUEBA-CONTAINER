## To create and run a container (an instance of the MariaDB database), after building the Docker image locally:

docker build -t bdprueba-cvds-eci:latest .

docker run -p 3306:3306 --name bdprueba-cvds-eci -d bdprueba-cvds-eci


## To create and run a container from the Docker image available on Dockerhub

docker run -p 3306:3306 --name bdprueba -d eciswe/bdprueba-cvds-eci
