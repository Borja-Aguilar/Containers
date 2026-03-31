# Ejercicio 3: ReplicaSets (Alta Disponibilidad)

### 🏢 Situación Real
Tu aplicación de pagos es crítica. Si el servidor se cae, la empresa pierde dinero cada segundo. Necesitas configurar Kubernetes para que siempre haya **3 copias** de la aplicación funcionando. Si un nodo falla o alguien borra un Pod por error, el sistema debe autorrepararse.

### 📋 Requerimientos del Ejercicio
1. **Tipo de recurso:** `ReplicaSet`.
2. **Nombre:** `replicaset-web`.
3. **Réplicas:** Configura exactamente **3**.
4. **Selector:** Debe gestionar los Pods que tengan la etiqueta `tier: frontend`.
5. **Plantilla (Template):** Los Pods creados deben usar la imagen `nginx:alpine`.
6. **Prueba de fuego:** Una vez desplegado, borra uno de los 3 Pods manualmente y observa cómo Kubernetes reacciona.
