# Ejercicio 4: Deployments (Gestión de Ciclo de Vida)

### 🏢 Situación Real
Tu equipo de desarrollo ha lanzado una nueva versión de la web. En lugar de borrar todo y volverlo a subir (lo que causaría errores 404 a los clientes), necesitas hacer una transición suave. El Deployment se encargará de levantar la versión nueva y, solo cuando esté lista, borrar la antigua.

### 📋 Requerimientos del Ejercicio
1. **Tipo de recurso:** `Deployment`.
2. **Nombre:** `webapp-deployment`.
3. **Réplicas:** Configura **3**.
4. **Imagen Inicial:** `nginx:1.21-alpine`.
5. **Etiquetas:** `app: web-server`.
6. **Tarea de actualización:** Una vez desplegado, actualiza la imagen a la versión `nginx:1.23-alpine` y observa cómo Kubernetes hace el cambio de uno en uno.
7. **Rollback:** Imagina que la versión nueva falla. Aprende el comando para volver a la versión anterior de inmediato.
