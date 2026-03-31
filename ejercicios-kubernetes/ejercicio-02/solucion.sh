#!/bin/bash

# 1. Crear el namespace y el pod usando el archivo YAML
kubectl apply -f pod-dev.yaml

# 2. Intentar ver el pod sin especificar el namespace (Error común en el CKA)
echo "Buscando en namespace 'default'..."
kubectl get pods

# 3. Ver el pod especificando el namespace correcto
echo "----------------------------------------------------------"
echo "Buscando en namespace 'desarrollo':"
kubectl get pods -n desarrollo

# 4. Ver todos los recursos de todos los namespaces (Comando de supervivencia)
echo "----------------------------------------------------------"
echo "Vista global del clúster:"
kubectl get pods -A
