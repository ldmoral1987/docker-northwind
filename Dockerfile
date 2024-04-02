# Creamos la imagen de MySQL
FROM mysql:latest

# Configuramos la contraseña de root
ENV MYSQL_ROOT_PASSWORD=programacion2324

# Se copia el script de carga de la base de datos 'init.sql' a 'docker-entrypoint-initdb.d'
# Esto inicializará el contenedor con la base de datos Northwind especificada en 'init.sql'
COPY ./init.sql /docker-entrypoint-initdb.d/