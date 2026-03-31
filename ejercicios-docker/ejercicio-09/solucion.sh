#!/bin/bash

# 1. Lanzar el contenedor con límites estrictos de hardware
# --cpus="0.5" limita la cuota de tiempo de CPU
# --memory="128m" limita la memoria RAM física
docker run -d \
  --name contenedor-limitado \
  --cpus="0.5" \
  --memory="128m" \
  progrium/stress --cpu 2

# 2. Verificación en tiempo real del cumplimiento de límites
echo "----------------------------------------------------------"
echo "Monitorizando límites (Espera 5 segundos y pulsa Ctrl+C):"
echo "Observa que la columna CPU % no debería pasar del 50%"
echo "----------------------------------------------------------"

docker stats --no-stream contenedor-limitado
