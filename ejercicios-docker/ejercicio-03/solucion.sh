#!/bin/bash

# 1. Crear la red privada (aislamiento de red)
docker network create red-aplicacion

# 2. Lanzar la base de datos en la red creada
docker run -d \
  --name db-cache \
  --network red-aplicacion \
  redis:alpine

# 3. Lanzar el servidor web en la misma red
docker run -d \
  --name web-server \
  --network red-aplicacion \
  -p 8080:80 \
  nginx:alpine

# 4. Verificación de conectividad (DNS interno)
echo "----------------------------------------------------------"
echo "Probando conexión desde web-server hacia db-cache:"
echo "----------------------------------------------------------"
docker exec web-server ping -c 2 db-cache
