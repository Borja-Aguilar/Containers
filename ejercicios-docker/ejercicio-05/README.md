# Ejercicio 5: Limpieza y Mantenimiento (Ticket #005)

### 🏢 Situación Real
El equipo de monitoreo ha dado una alerta: el disco del servidor de integración continua (CI/CD) está al 95% de su capacidad. Se han acumulado cientos de imágenes antiguas de pruebas pasadas y contenedores que ya no se usan. Necesitas liberar espacio de forma segura sin borrar lo que está en ejecución.

### 📋 Requerimientos del Ejercicio
Debes ejecutar una limpieza profunda del motor de Docker siguiendo estos pasos:

1. **Contenedores:** Elimina todos los contenedores que estén en estado "Exited" (detenidos).
2. **Imágenes:** Elimina las imágenes que no estén siendo utilizadas por ningún contenedor activo (imágenes "dangling" o sueltas).
3. **Volúmenes:** Elimina los volúmenes que no tengan ningún contenedor asociado.
4. **Comando Maestro:** Utiliza el comando nativo de Docker que permite limpiar todo esto de un solo golpe.
