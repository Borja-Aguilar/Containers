#!/bin/bash

# 1. Crear el volumen independiente del contenedor
docker volume create datos-mariadb

# 2. Ejecución del contenedor vinculado al volumen
docker run -d \
  --name db-produccion \
  -e MARIADB_ROOT_PASSWORD=secret123 \
  -v datos-mariadb:/var/lib/mysql \
  mariadb:latest

# 3. Verificación técnica
docker volume ls | grep datos-mariadb
