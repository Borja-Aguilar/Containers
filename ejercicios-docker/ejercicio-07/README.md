# Ejercicio 7: Variables de Entorno y Configuración (Ticket #007)

### 🏢 Situación Real
El equipo de desarrollo ha creado una aplicación que cambia su comportamiento según el entorno donde se encuentre (Desarrollo, QA o Producción). Te piden desplegar un contenedor de prueba que use estas configuraciones sin modificar la imagen base.

### 📋 Requerimientos del Ejercicio
Debes lanzar un contenedor basado en la imagen de Alpine Linux que imprima un mensaje personalizado usando variables de entorno:

1. **Imagen:** `alpine:latest`.
2. **Nombre:** `app-configurada`.
3. **Variables:** - `APP_ENV`: Debe valer `PRODUCCION`.
   - `USER_ID`: Debe valer `admin-01`.
4. **Acción:** El contenedor debe ejecutar el comando `env` al arrancar para demostrar que las variables se han cargado correctamente.
5. **Modo:** Ejecución en primer plano (para ver el resultado inmediatamente) y que se borre automáticamente al terminar (`--rm`).
