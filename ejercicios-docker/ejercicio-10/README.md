# Ejercicio 10: Orquestación de Microservicios (Stack de Votación)

### 🏢 Situación Real
La empresa va a lanzar una aplicación de votación en tiempo real. La arquitectura se compone de un frontal para votar, una base de datos para almacenar los votos y un panel de resultados. Tu misión es interconectarlos todos en una red segura y aislada.

### 📋 Requerimientos del Ejercicio
Debes desplegar tres piezas que trabajen en armonía dentro de una red llamada `red-votos`:

1. **Red:** Crea una red de tipo `bridge` llamada `red-votos`.
2. **Base de Datos (Backend):**
   - Imagen: `redis:alpine`.
   - Nombre: `redis`. (Es vital que se llame así para que la App lo encuentre).
   - Red: `red-votos`.
3. **App de Voto (Frontend):**
   - Imagen: `dockersamples/example-voting-app-vote`.
   - Nombre: `voto-app`.
   - Puerto: Mapea el **5000** del host al **80** del contenedor.
   - Red: `red-votos`.
4. **App de Resultados (Analytics):**
   - Imagen: `dockersamples/example-voting-app-result`.
   - Nombre: `resultado-app`.
   - Puerto: Mapea el **5001** del host al **80** del contenedor.
   - Red: `red-votos`.
