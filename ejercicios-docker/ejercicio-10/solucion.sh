#!/bin/bash

# 1. Crear la red para que los contenedores se vean por nombre
docker network create red-votos

# 2. Levantar la base de datos Redis (el motor de votos)
docker run -d \
  --name redis \
  --network red-votos \
  redis:alpine

# 3. Levantar la aplicación de votación (disponible en localhost:5000)
docker run -d \
  --name voto-app \
  --network red-votos \
  -p 5000:80 \
  dockersamples/example-voting-app-vote

# 4. Levantar la aplicación de resultados (disponible en localhost:5001)
docker run -d \
  --name resultado-app \
  --network red-votos \
  -p 5001:80 \
  dockersamples/example-voting-app-result

# 5. Verificación final
echo "----------------------------------------------------------"
echo "Stack desplegado. Accede a:"
echo "Votar: http://localhost:5000"
echo "Resultados: http://localhost:5001"
echo "----------------------------------------------------------"
docker ps --filter "network=red-votos"
