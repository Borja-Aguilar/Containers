# Ejercicio 9: Limitación de CPU y Control de Estrés

### 🏢 Situación Real
Un desarrollador ha desplegado un script de procesamiento de imágenes que, por un error de programación, entra en un bucle infinito y consume el 100% de la CPU disponible. Esto está ralentizando al resto de contenedores del servidor. Necesitas re-desplegarlo limitando su capacidad de "robo" de CPU.

### 📋 Requerimientos del Ejercicio
Debes lanzar un contenedor que simule una carga de trabajo alta, pero con las "esposas" puestas para que no afecte al sistema:

1. **Imagen:** `progrium/stress` (herramienta clásica para pruebas de carga).
2. **Nombre:** `contenedor-limitado`.
3. **Límite de CPU:** Restringe el uso a un máximo de **0.5 CPUs** (la mitad de un núcleo).
4. **Límite de Memoria:** No debe exceder los **128MB**.
5. **Acción de estrés:** El contenedor debe ejecutar el comando `--cpu 2` (intentará usar 2 núcleos, pero Docker debe frenarlo a 0.5).
