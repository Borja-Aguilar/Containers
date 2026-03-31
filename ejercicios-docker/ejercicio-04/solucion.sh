#!/bin/bash

# 1. Crear el archivo HTML de la campaña
echo "<h1>Campaña Marketing 2026 - Docker Pro</h1>" > index.html

# 2. Crear el Dockerfile con las instrucciones de construcción
cat <<EOF > Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EOF

# 3. Construir la imagen personalizada
docker build -t mi-web-marketing:v1 .

# 4. Ejecutar el contenedor basado en la nueva imagen
docker run -d \
  --name contenedor-marketing \
  -p 8081:80 \
  mi-web-marketing:v1

# 5. Verificación de la imagen creada
docker images | grep mi-web-marketing
