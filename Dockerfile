# Base image
FROM mariadb:latest

# Environment variables for MariaDB
ENV MYSQL_ROOT_PASSWORD=mysecretpassword
ENV MYSQL_DATABASE=bdprueba
ENV MYSQL_USER=bdprueba
ENV MYSQL_PASSWORD=prueba2019

# Copy the database schema file to the container
COPY mydatabase.sql /docker-entrypoint-initdb.d/

# Expose port 3306 for MariaDB
EXPOSE 3306

# Start the MariaDB service
CMD ["mysqld"]