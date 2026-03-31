# Ejercicio 9: Liveness y Readiness Probes (Monitoreo de Salud)

### 🏢 Situación Real
Tienes una aplicación que a veces sufre "memory leaks" y se queda congelada sin responder a nadie, aunque el contenedor aparece como "Running". Además, al arrancar, tarda 10 segundos en cargar su base de datos interna. Si le envías tráfico antes de esos 10 segundos, dará error a los usuarios.

### 📋 Requerimientos del Ejercicio
1. **Deployment:** Crea uno llamado `app-con-sondas`.
2. **Imagen:** `nginx:alpine`.
3. **Liveness Probe:** Configura una sonda que verifique la ruta `/` cada 5 segundos. Si falla 3 veces, el Pod debe reiniciarse.
4. **Readiness Probe:** Configura una sonda que espere 10 segundos antes de empezar a preguntar si la app está lista para recibir tráfico.
5. **Verificación:** Describe el Pod y busca la sección de "Conditions" y "Events" para ver cómo Kubernetes gestiona el arranque.
