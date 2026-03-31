# Ejercicio 6: Inspección y Troubleshooting (Ticket #006)

### 🏢 Situación Real
El equipo de Front-end reporta que la nueva versión de la API está dando errores intermitentes. No saben si es un problema de la configuración de red, si el proceso interno se está quedando sin memoria o si hay un error en el código. 

### 📋 Requerimientos del Ejercicio
Debes realizar una "auditoría" completa de un contenedor en ejecución para extraer información crítica:

1. **Despliegue:** Lanza un contenedor llamado `api-auditoria` usando la imagen `nginx:alpine`.
2. **Logs:** Extrae las últimas 10 líneas de registro del contenedor.
3. **Inspección de IP:** Averigua la dirección IP interna que Docker le ha asignado al contenedor en la red por defecto.
4. **Procesos:** Visualiza qué procesos se están ejecutando dentro del contenedor (su "Task Manager" interno).
5. **Evento en vivo:** Deja un terminal escuchando los logs en tiempo real para capturar cualquier petición entrante.
