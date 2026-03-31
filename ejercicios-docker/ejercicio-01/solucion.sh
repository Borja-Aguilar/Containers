#!/bin/bash

# 1. Ejecución del contenedor con las restricciones del ticket
docker run -d \
  --name servicio-estabilidad-qa \
  --memory="200m" \
  --memory-reservation="100m" \
  --restart unless-stopped \
  jpetazzo/clock

# 2. Verificación técnica de la aplicación de límites
echo "Verificando estadísticas de recursos..."
sleep 2
docker stats --no-stream servicio-estabilidad-qa
