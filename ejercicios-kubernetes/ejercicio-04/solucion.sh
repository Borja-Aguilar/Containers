#!/bin/bash

# 1. Crear el Deployment
kubectl apply -f deployment.yaml

# 2. Ver el historial de revisiones
echo "Historial de versiones del Deployment:"
kubectl rollout history deployment/webapp-deployment

# 3. Actualizar la imagen a una versión superior (Simulando un despliegue de nueva versión)
echo "Actualizando a nginx:1.23-alpine..."
kubectl set image deployment/webapp-deployment nginx=nginx:1.23-alpine

# 4. Vigilar el estado de la actualización en tiempo real
# (Este comando es clave en el CKA para saber cuándo ha terminado un cambio)
kubectl rollout status deployment/webapp-deployment

# 5. ¡Socorro! La versión nueva falla. Hacer un Rollback (volver atrás)
echo "Haciendo rollback a la versión anterior..."
kubectl rollout undo deployment/webapp-deployment
