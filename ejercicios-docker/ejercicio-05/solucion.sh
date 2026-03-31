#!/bin/bash

# 1. Limpieza total de recursos no utilizados (Contenedores, Redes, Imágenes)
# El flag -f (force) evita que Docker pida confirmación manual.
docker system prune -f

# 2. Limpieza específica de volúmenes huérfanos (No se borran con el prune básico)
docker volume prune -f

# 3. Verificación de espacio liberado (Muestra cuánto ocupan ahora los objetos de Docker)
echo "----------------------------------------------------------"
echo "Resumen de uso de disco tras la limpieza:"
echo "----------------------------------------------------------"
docker system df
