#!/bin/bash

# 1. Crear el ConfigMap y el Pod
kubectl apply -f configmap-web.yaml

# 2. Verificar que la Variable de Entorno llegó correctamente
echo "Verificando Variable de Entorno BIENVENIDA:"
kubectl exec pod-configurado -- printenv BIENVENIDA

# 3. Verificar que el archivo se montó en el volumen
echo "----------------------------------------------------------"
echo "Contenido del archivo montado en /etc/config/custom.conf:"
kubectl exec pod-configurado -- cat /etc/config/custom.conf

# 4. Listar todos los ConfigMaps del namespace
kubectl get configmap
