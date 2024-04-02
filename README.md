# docker-northwind
Configuración de Docker que implementa un contenedor `mysql` con la base de datos **Northwind**. Se ha desarrollado para desplegar rápidamente una base de datos para testeo desde una aplicación para hacer operaciones **CRUD** (Create, Read, Update, Delete) y se ha utilizado en la docencia del módulo profesional de Programación, del ciclo de **DAW** (Desarrollo de Aplicaciones Web) a Distancia. 

## Creación del contenedor
Ejecuta el comando `docker build . -t mysql-northwind` para crear el contenedor. Este comando descargará la imagen correspondiente y cargará el fichero **init.sql** para inicializar el servicio de **MySQL**. También configurará la clave de **root**. La contraseña se especifica en el fichero **Dockerfile**. ¡Ten cuidado y cambia la clave si vas a hacer un despliegue en producción! Adicionalmente, considera usar otros tipos de cuentas (ten en mente que este despliegue es únicamente para realizar aplicaciones de prueba) :technologist:

## Primer uso del contenedor
Ejecuta el comando `docker run --name mysql-northwind -p 3306:3306 mysql-northwind` para ejecutar el contenedor por primera vez y exponer el puerto **3306** al exterior. Ten en cuenta que el contenedor no incluye **phpmyadmin** ni ningún servicio adicional, pero puedes conectarte desde **MySQL Workbench** o usando la consola del propio contenedor.

## Información adicional
El fichero **northwind-erd.pdf** contiene el diagrama **E-R** de la base de datos para que puedas consultar las diferentes relaciones y claves de las tablas.
