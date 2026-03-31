#!/bin/bash

# 1. Aplicar el archivo YAML para crear el Pod
kubectl apply -f pod.yaml

# 2. Listar los pods para ver su estado (esperamos a que esté Running)
kubectl get pods

# 3. Obtener información detallada del Pod (incluyendo su IP y Eventos)
kubectl describe pod pod-nginx

# 4. Ver los logs del Pod para confirmar que Nginx arrancó bien
kubectl logs pod-nginx

# 5. (Opcional) Borrar el pod al terminar la prueba
# kubectl delete pod pod-nginx
