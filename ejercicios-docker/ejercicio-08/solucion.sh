#!/bin/bash

# 1. Levantar el contenedor en segundo plano
docker run -d --name servidor-interactivo nginx:alpine

# 2. Ejecutar un comando directamente para crear el archivo (Simula la acción interna)
# En un entorno real, aquí usarías 'docker exec -it servidor-interactivo /bin/sh'
docker exec servidor-interactivo sh -c "echo 'Acceso desde el exterior exitoso' > /usr/share/nginx/html/hola.txt"

# 3. Verificar el contenido del archivo desde fuera del contenedor
echo "----------------------------------------------------------"
echo "Contenido del archivo creado dentro del contenedor:"
echo "----------------------------------------------------------"
docker exec servidor-interactivo cat /usr/share/nginx/html/hola.txt

# 4. Listar los archivos del directorio para confirmar la creación
docker exec servidor-interactivo ls /usr/share/nginx/html/
