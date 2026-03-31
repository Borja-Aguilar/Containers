#!/bin/bash

# 1. Aplicar el Deployment y el Service NodePort
kubectl apply -f service-external.yaml

# 2. Ver el Service y confirmar el mapeo de puertos
echo "Detalles del Service NodePort:"
kubectl get svc servicio-publico

# 3. Obtener la IP de los nodos (donde debemos apuntar el navegador)
echo "----------------------------------------------------------"
echo "Direcciones IP de los nodos para acceder externamente:"
kubectl get nodes -o wide

# 4. Probar con un comando curl (simulando acceso externo)
# Nota: Cambia 'localhost' por la IP de tu nodo si estás en la nube
echo "----------------------------------------------------------"
echo "Probando acceso al puerto 30080..."
curl -I http://localhost:30080
