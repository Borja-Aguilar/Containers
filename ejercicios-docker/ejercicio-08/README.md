# Ejercicio 8: Interacción con Contenedores en Ejecución (Exec)

### 🏢 Situación Real
Un desarrollador ha desplegado un servidor web Nginx, pero se ha olvidado de incluir el archivo de configuración personalizado. El contenedor ya está en producción y no podemos permitirnos pararlo para reconstruir la imagen. Necesitas entrar "en vivo", crear un archivo de prueba y verificar que el servidor lo reconoce.

### 📋 Requerimientos del Ejercicio
Debes interactuar con un contenedor que ya está funcionando sin detenerlo:

1. **Despliegue inicial:** Lanza un contenedor llamado `servidor-interactivo` con la imagen `nginx:alpine` en segundo plano (`-d`).
2. **Acceso interactivo:** Entra en el contenedor usando una terminal interactiva (`-it`) y el shell `/bin/sh`.
3. **Modificación interna:** Una vez dentro, crea un archivo llamado `hola.txt` en la ruta `/usr/share/nginx/html/` con el texto "Acceso desde el exterior exitoso".
4. **Verificación externa:** Sin entrar de nuevo, ejecuta un comando desde tu host para leer el contenido de ese archivo `/usr/share/nginx/html/hola.txt`.
