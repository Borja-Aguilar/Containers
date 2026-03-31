# Ejercicio 10: Persistencia de Datos (PVC y Volúmenes)

### 🏢 Situación Real
Vas a desplegar una base de datos MySQL. El equipo de datos te advierte: "Si el nodo se reinicia y perdemos los registros de clientes, estamos fuera del negocio". Debes asegurar que los datos guardados en `/var/lib/mysql` persistan fuera del ciclo de vida del Pod.

### 📋 Requerimientos del Ejercicio
1. **PersistentVolumeClaim (PVC):** Crea uno llamado `mysql-pvc`.
   - Capacidad: `1Gi` (1 Gigabyte).
   - Modo de acceso: `ReadWriteOnce` (Solo un nodo puede escribir a la vez).
2. **Pod:** Crea un Pod llamado `mysql-persistente`.
   - Imagen: `mysql:5.7`.
   - Variable de entorno obligatoria: `MYSQL_ROOT_PASSWORD=password123`.
   - Montaje: Monta el PVC `mysql-pvc` en la ruta `/var/lib/mysql`.
3. **Verificación:** Crea un archivo dentro del montaje, borra el Pod, crea uno nuevo y comprueba que el archivo **sigue ahí**.
