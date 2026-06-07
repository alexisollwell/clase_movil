# Contexto del Proyecto: clase_movil

## Información del Proyecto
Este es un proyecto desarrollado con Flutter (SDK ^3.11.4).
El proyecto cuenta con dependencias como `cupertino_icons`, `google_fonts`, `lottie` y `audioplayers`, lo que indica que es una aplicación con soporte para fuentes personalizadas, animaciones interactivas (Lottie) y reproducción de audio. La fuente tipográfica principal configurada es "Pacifico".

## Arquitectura y Relaciones entre Archivos
La arquitectura del proyecto sigue la estructura estándar de Flutter, dividiendo las responsabilidades para mantener el código organizado. Dentro del directorio principal de código (`lib/`), se encuentran las siguientes áreas:

- **`lib/main.dart`**: Es el punto de entrada principal de la aplicación Flutter. Aquí se inicializa la app y se definen las rutas principales o la pantalla de inicio.
- **`lib/components/`**: Contiene widgets y elementos de la interfaz de usuario que son modulares y reutilizables en diferentes partes de la aplicación (botones, tarjetas, barras de navegación, etc.).
- **`lib/screens/`**: Contiene las diferentes pantallas o vistas completas de la aplicación. Cada archivo aquí suele representar una página que el usuario puede ver e interactuar.
- **`lib/practice/`**: Área destinada a código de práctica, prototipos, pruebas aisladas de conceptos o ejercicios durante el desarrollo.

Además, el proyecto hace uso de recursos locales organizados en la carpeta `assets/`, incluyendo:
- `assets/images/`: Para imágenes estáticas.
- `assets/jsons/`: Para archivos de datos o animaciones de Lottie.
- `assets/audio/`: Para archivos de sonido (ej. `stolen_dance.mp3`).
- `assets/fonts/`: Para archivos de fuentes tipográficas locales.

## Reglas de Desarrollo y Planes de Implementación

Para mantener el orden y la eficiencia en el desarrollo, el asistente de IA debe seguir estrictamente estas reglas:

**1. Obligación de Crear un Plan:**
Antes de escribir, modificar o eliminar cualquier código, la IA debe proponer un **Plan de Implementación** detallado.

**2. Esperar Confirmación Explícita:**
Una vez presentado el plan, la IA debe detenerse y **esperar la confirmación explícita del usuario** ("procede", "aprobado", "adelante", etc.). Está estrictamente prohibido generar el código de la solución sin esta aprobación previa.

**3. Requisitos del Plan de Implementación:**
Cada plan propuesto debe incluir obligatoriamente los siguientes elementos al final del mismo:
- **Porcentaje de Éxito Estimado:** Un porcentaje (ej. 90%, 95%) que represente la probabilidad de éxito del plan propuesto, basándose en la complejidad de la tarea y el conocimiento actual del proyecto.
- **Sugerencia de Modelo de IA (Eficiencia de Tokens):** Una recomendación clara de cuál modelo de IA sería el más eficiente (mejor relación calidad/consumo de tokens) para ejecutar dicho plan, seleccionando **única y exclusivamente** de la siguiente lista de modelos disponibles:
  - gemini 3.5 flash (medium)
  - gemini 3.5 flash (high)
  - gemini 3.5 flash (low)
  - gemini 3.1 pro (low)
  - gemini 3.1 pro (high)
  - claude sonnet 4.6 (thinking)
  - claude opus 4.6 (thinking)
  - gpt-oss 120B

## Gestión de la Documentación (`docs/`)
Se ha establecido un directorio `docs/` para llevar el control del ciclo de vida de las tareas:
- **`docs/PENDING_TASKS.md`**: Lista de tareas por hacer y features planificadas.
- **`docs/APPROVED_IMPLEMENTATIONS.md`**: Registro detallado de las implementaciones y planes que han sido revisados y aprobados por el usuario, listos para ser codificados.
- **`docs/HISTORY.md`**: Documentación del historial de los planes que ya fueron aprobados y que ya han sido exitosamente implementados en el código.
