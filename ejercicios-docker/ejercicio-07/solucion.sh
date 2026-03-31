#!/bin/bash

# 1. Ejecutar el contenedor pasando variables de entorno con el flag -e
# Usamos --rm para que el contenedor se limpie solo al terminar la tarea.
docker run --rm \
  --name app-configurada \
  -e APP_ENV=PRODUCCION \
  -e USER_ID=admin-01 \
  alpine:latest \
  env

# 2. Verificación adicional (opcional): 
# Si el contenedor estuviera en background, usaríamos:
# docker exec app-configurada printenv
