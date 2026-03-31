#!/bin/bash

# 1. Aplicar la configuración completa
kubectl apply -f service-internal.yaml

# 2. Ver el Service y su IP estática (Cluster-IP)
echo "Información del Service creado:"
kubectl get svc servicio-backend

# 3. Probar la conectividad por nombre DNS (Truco de experto CKA)
# Lanzamos un pod temporal solo para hacer un 'curl' al nombre del servicio
echo "----------------------------------------------------------"
echo "Probando acceso interno por nombre DNS..."
kubectl run test-pod --rm -it --image=busybox --restart=Never -- wget -O- http://servicio-backend
