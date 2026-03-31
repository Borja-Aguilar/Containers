#!/bin/bash

# 1. Crear el ReplicaSet
kubectl apply -f replicaset.yaml

# 2. Verificar que hay 3 pods corriendo
echo "Esperando a que las 3 réplicas estén listas..."
kubectl get pods -l tier=frontend

# 3. La prueba de 'resiliencia'
# Vamos a borrar un pod aleatorio del ReplicaSet
POD_NAME=$(kubectl get pods -l tier=frontend -o jsonpath="{.items[0].metadata.name}")
echo "Borrando el pod: $POD_NAME"
kubectl delete pod $POD_NAME

# 4. Ver cómo el ReplicaSet crea uno nuevo inmediatamente
echo "Observa cómo Kubernetes ya está creando el reemplazo:"
kubectl get pods -l tier=frontend
