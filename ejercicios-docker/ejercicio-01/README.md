# Ejercicio 1: Gestión de Recursos y Límites (Ticket #001)

### 🏢 Situación Real
El equipo de SRE (Site Reliability Engineering) ha detectado inestabilidad en el nodo de desarrollo. Un contenedor está consumiendo RAM de forma descontrolada, lo que obliga al Kernel a activar el **OOM Killer** para proteger el sistema operativo.

### 📋 Requerimientos del Ejercicio
Debes desplegar el servicio de procesamiento `jpetazzo/clock` cumpliendo con las siguientes restricciones técnicas:

1. **Identificación:** El contenedor debe llevar el nombre `servicio-estabilidad-qa`.
2. **Hard Limit (Memoria):** No puede exceder los **200MB** (Límite máximo).
3. **Soft Limit (Reserva):** Debe tener garantizados **100MB** de RAM.
4. **Resiliencia:** Si el proceso falla o el motor de Docker se reinicia, el contenedor debe levantarse automáticamente.
5. **Modo:** Ejecución en segundo plano (detached).
