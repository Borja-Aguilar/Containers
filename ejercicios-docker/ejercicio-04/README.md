# Ejercicio 4: Creación de Imágenes Personalizadas (Dockerfile)

### 🏢 Situación Real
El equipo de desarrollo ha creado una página web estática para una campaña de marketing. Te entregan el código HTML y te piden que crees una imagen de Docker "lista para usar", de modo que cualquier persona en la empresa pueda desplegarla sin instalar nada.

### 📋 Requerimientos del Ejercicio
Debes construir una imagen personalizada basada en Nginx que contenga el mensaje de la campaña:

1. **Base:** Usa la imagen `nginx:alpine` (por ser ligera y segura).
2. **Personalización:** El archivo `index.html` debe contener el texto `<h1>Campaña Marketing 2026 - Docker Pro</h1>`.
3. **Automatización:** Crea un `Dockerfile` que copie ese archivo al directorio por defecto de Nginx (`/usr/share/nginx/html`).
4. **Construcción:** La imagen debe etiquetarse como `mi-web-marketing:v1`.
5. **Prueba:** Despliega un contenedor llamado `contenedor-marketing` usando tu nueva imagen en el puerto **8081**.
