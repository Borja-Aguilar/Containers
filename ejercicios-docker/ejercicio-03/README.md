# Ejercicio 3: Comunicación entre Contenedores (Networking)

### 🏢 Situación Real
El equipo de desarrollo ha entregado una aplicación web que necesita conectarse a una base de datos Redis para cachear sesiones. Si desplegamos ambos contenedores por separado sin configurar una red, la web no podrá encontrar la base de datos y la aplicación fallará al arrancar.

### 📋 Requerimientos del Ejercicio
Debes crear una infraestructura de red privada donde ambos servicios puedan comunicarse por su **nombre de contenedor** (DNS interno de Docker):

1. **Red:** Crea una red de tipo `bridge` llamada `red-aplicacion`.
2. **Base de Datos:**
   - Imagen: `redis:alpine`.
   - Nombre: `db-cache`.
   - Red: `red-aplicacion`.
3. **Aplicación Web:**
   - Imagen: `nginx:alpine`.
   - Nombre: `web-server`.
   - Red: `red-aplicacion`.
   - Puerto: Mapea el puerto **8080** del host al **80** del contenedor.

*Objetivo: El contenedor `web-server` debe ser capaz de hacer un 'ping' a `db-cache` usando solo su nombre.*
