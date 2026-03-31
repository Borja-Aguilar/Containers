# Ejercicio 6: Services (NodePort - Acceso Externo)

### 🏢 Situación Real
Has desplegado el frontend de la empresa en el clúster. Los desarrolladores y el cliente necesitan ver la web desde sus propios ordenadores para validar el diseño. Como el clúster está en una red privada, necesitas mapear un puerto del Nodo físico hacia el Service interno.

### 📋 Requerimientos del Ejercicio
1. **Deployment:** Crea uno llamado `frontend-externo` con 2 réplicas de `nginx:alpine`.
2. **Etiqueta:** Los Pods deben tener `app: web-publica`.
3. **Service:** Crea un Service de tipo **NodePort** llamado `servicio-publico`.
4. **Puertos:** - El servicio escucha internamente en el **80**.
   - El puerto del nodo (NodePort) debe ser el **30080**.
5. **Verificación:** Identifica la IP de tus nodos y confirma que puedes acceder vía `http://<IP-NODO>:30080`.
