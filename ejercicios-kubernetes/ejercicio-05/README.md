# Ejercicio 5: Services (ClusterIP - Comunicación Interna)

### 🏢 Situación Real
Tienes un Deployment de 3 réplicas de Nginx actuando como un microservicio de "Backend". Otros servicios del clúster necesitan consultarlo, pero no saben a qué IP de Pod llamar porque estas cambian constantemente. Necesitas crear un "punto de acceso único" que balancee la carga.

### 📋 Requerimientos del Ejercicio
1. **Deployment:** Crea uno llamado `backend-deployment` con 3 réplicas de `nginx:alpine`.
2. **Etiqueta:** Asegúrate de que los Pods tengan la etiqueta `app: backend-api`.
3. **Service:** Crea un Service de tipo **ClusterIP** llamado `servicio-backend`.
4. **Puerto:** El servicio debe escuchar en el puerto **80** y redirigir al puerto **80** de los Pods.
5. **Verificación:** Obtén la IP virtual (ClusterIP) y comprueba que el nombre DNS interno funciona.
