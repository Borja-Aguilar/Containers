# Ejercicio 2: Organización por Namespaces (Aislamiento)

### 🏢 Situación Real
Tu clúster de Kubernetes está creciendo y ahora lo comparten dos equipos: **Desarrollo** y **Producción**. Si ambos despliegan un Pod llamado `api-server` en el mismo sitio, habrá un conflicto de nombres. Debes crear un entorno aislado para el equipo de Desarrollo.

### 📋 Requerimientos del Ejercicio
1. **Crear un Namespace:** Debe llamarse `desarrollo`.
2. **Desplegar un Pod:** Crea un Pod llamado `pod-dev` dentro de ese nuevo namespace.
3. **Imagen:** `nginx:alpine`.
4. **Verificación:** - Lista los pods del namespace `default` (debería estar vacío o sin este pod).
   - Lista los pods del namespace `desarrollo` para confirmar que está ahí.
   - Aprende el comando para ver **todos** los pods de todos los namespaces a la vez.
