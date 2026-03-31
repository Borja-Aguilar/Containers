# Ejercicio 7: ConfigMaps (Configuración Desacoplada)

### 🏢 Situación Real
El equipo de SRE te pide que el servidor Nginx de producción muestre un mensaje de bienvenida personalizado y que use un puerto específico definido en un archivo de configuración. No quieren crear una imagen nueva cada vez que el mensaje cambie.

### 📋 Requerimientos del Ejercicio
1. **Crear un ConfigMap:** Debe llamarse `web-config` y contener:
   - Una variable: `MENSAJE_BIENVENIDA="Hola, este es el cluster de Produccion"`.
   - Un archivo: `custom.conf` con un texto simple.
2. **Desplegar un Pod:** Llamado `pod-configurado`.
3. **Inyección:** - La variable debe aparecer como una **Variable de Entorno** dentro del contenedor.
   - El archivo debe "montarse" como un **Volumen** en la ruta `/etc/config`.
4. **Verificación:** Entra al pod y comprueba que la variable existe y el archivo es legible.
