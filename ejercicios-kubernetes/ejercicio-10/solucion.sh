#!/bin/bash

# 1. Crear el PVC y el Pod
kubectl apply -f mysql-persistent.yaml

# 2. Verificar que el PVC está "Bound" (Vinculado a un disco real)
echo "Estado del almacenamiento solicitado:"
kubectl get pvc mysql-pvc

# 3. Simular escritura de datos
echo "Creando dato de prueba dentro del volumen..."
kubectl exec mysql-persistente -- sh -c "echo 'DATOS_CRITICOS' > /var/lib/mysql/backup.txt"

# 4. LA PRUEBA DE FUEGO: Borrar el Pod
echo "Borrando el Pod (Simulando fallo crítico)..."
kubectl delete pod mysql-persistente --wait=false

# 5. Re-crear el Pod y verificar persistencia
echo "Levantando nuevo Pod..."
kubectl apply -f mysql-persistent.yaml
sleep 10 # Esperar a que arranque

echo "----------------------------------------------------------"
echo "Verificando si el archivo sobrevivió:"
kubectl exec mysql-persistente -- cat /var/lib/mysql/backup.txt
