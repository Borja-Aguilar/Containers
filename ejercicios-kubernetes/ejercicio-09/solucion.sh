#!/bin/bash

# 1. Aplicar el Deployment
kubectl apply -f deployment-probes.yaml

# 2. Ver el estado inicial (Verás que el Pod está 'Running' pero 0/1 READY)
echo "Esperando el periodo de 'Readiness'..."
kubectl get pods -l app=web-health

# 3. Inspeccionar las sondas en el Pod
echo "----------------------------------------------------------"
echo "Detalles de las sondas configuradas:"
kubectl describe pod -l app=web-health | grep -iE "Liveness|Readiness"

# 4. Ver los eventos del sistema
# Aquí verás si alguna sonda falló y si hubo reinicios (Restarts)
kubectl get events --sort-by='.lastTimestamp'
