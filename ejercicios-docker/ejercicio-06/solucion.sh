#!/bin/bash

# 1. Crear el contenedor para auditar
docker run -d --name api-auditoria nginx:alpine

# 2. Ver la dirección IP asignada (Filtrando el JSON de inspección)
echo "Dirección IP interna del contenedor:"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' api-auditoria

# 3. Ver los procesos internos del contenedor
echo "----------------------------------------------------------"
echo "Procesos activos dentro de api-auditoria:"
docker top api-auditoria

# 4. Ver los últimos logs (histórico)
echo "----------------------------------------------------------"
echo "Últimos logs registrados:"
docker logs --tail 10 api-auditoria

# 5. Comando para monitoreo en tiempo real (Se deja comentado para no bloquear el script)
# docker logs -f api-auditoria
