# Ejercicio 1: Mi primer Pod (El Átomo de K8s)

### 🏢 Situación Real
Tu empresa está migrando de Docker tradicional a Kubernetes. Tu primera tarea como administrador es demostrar que puedes desplegar un servidor web básico de Nginx, pero esta vez siguiendo el estándar de Kubernetes: mediante un archivo declarativo (YAML).

### 📋 Requerimientos del Ejercicio
Debes crear un Pod que cumpla con las siguientes especificaciones técnicas:

1. **Nombre del Pod:** `pod-nginx`.
2. **Imagen:** `nginx:alpine`.
3. **Etiqueta (Label):** `app: frontend`.
4. **Namespace:** Usa el namespace por defecto (`default`).
5. **Comando de verificación:** Una vez creado, debes comprobar que el Pod está en estado `Running` y obtener su dirección IP interna.
