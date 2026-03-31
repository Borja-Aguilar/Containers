# Ejercicio 8: Secrets (Datos Sensibles)

### 🏢 Situación Real
Tu aplicación necesita conectarse a una base de datos externa. El equipo de seguridad prohíbe terminantemente que la contraseña aparezca en los archivos YAML de despliegue. Debes crear un objeto Secret y hacer que el Pod lo consuma de forma segura.

### 📋 Requerimientos del Ejercicio
1. **Crear un Secret:** Llamado `db-pass` que contenga:
   - Clave: `password`
   - Valor: `S3cur3P@ssw0rd`
2. **Desplegar un Pod:** Llamado `pod-seguro`.
3. **Inyección:** La contraseña debe inyectarse como una **Variable de Entorno** llamada `DB_PASSWORD`.
4. **Verificación:** Comprueba que el Pod tiene la variable cargada, pero recuerda que en el YAML del Secret el valor debe estar en Base64.
