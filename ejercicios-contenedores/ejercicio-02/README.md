# Ejercicio 2: Persistencia de Datos Críticos (Ticket #002)

### 🏢 Situación Real
Un desarrollador junior ha borrado por error el contenedor de la base de datos de producción para actualizar la imagen. Al levantar el nuevo contenedor, se ha dado cuenta de que todas las tablas y datos han desaparecido. 

### 📋 Requerimientos del Ejercicio
Debes desplegar una base de datos **MariaDB** asegurando que la información sea persistente, de modo que aunque el contenedor se borre, los datos sobrevivan.

1. **Imagen:** `mariadb:latest`.
2. **Nombre del contenedor:** `db-produccion`.
3. **Persistencia:** Crea y utiliza un **Volumen Nombrado** llamado `datos-mariadb`.
4. **Ruta de datos:** El volumen debe montarse en la ruta interna `/var/lib/mysql`.
5. **Seguridad:** Configura la variable de entorno `MARIADB_ROOT_PASSWORD` con el valor `secret123`.
