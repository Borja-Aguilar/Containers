#!/bin/bash

# 1. Crear el Secret y el Pod
kubectl apply -f secret-db.yaml

# 2. Ver el Secret (Verás que los datos están ocultos)
echo "Descripción del Secret:"
kubectl get secret db-pass -o yaml

# 3. Verificación de la variable dentro del Pod
echo "----------------------------------------------------------"
echo "Contenido de la variable DB_PASSWORD dentro del Pod:"
kubectl exec pod-seguro -- printenv DB_PASSWORD

# 4. TRUCO CKA: Crear un secret rápido por línea de comandos (sin Base64 manual)
# kubectl create secret generic db-pass-fast --from-literal=password=S3cur3P@ssw0rd
