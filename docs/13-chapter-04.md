### 4.1. Style Guidelines

Esta sección establece las bases visuales y de comunicación para mantener la consistencia en todos los productos digitales de **OrganiK** (Landing Page y Dashboards). El objetivo es contar con un repositorio centralizado que facilite la escalabilidad del diseño y garantice una experiencia de usuario coherente tanto para administradores de minimarkets como para proveedores.

#### 4.1.1. General Style Guidelines

**Tono de Comunicación y Lenguaje**
La comunicación de OrganiK se rige bajo cuatro dimensiones principales para establecer confianza en un entorno B2B:
*   **Formal vs. Casual:** Ligeramente formal. Se dirige al usuario con respeto profesional, pero empleando términos claros y directos para agilizar la gestión operativa sin burocracia.
*   **Divertido vs. Serio:** Serio. Al tratarse de una herramienta para el control de inventarios, prevención de pérdidas económicas y abastecimiento, el enfoque debe transmitir seguridad y fiabilidad.
*   **Respetuoso vs. Irreverente:** Respetuoso. Considera la alta carga operativa y el estrés de los usuarios (como los administradores de minimarkets), mostrándose como un asistente empático.
*   **Entusiasta vs. Sereno:** Sereno. Las interfaces e interacciones no buscan abrumar al usuario con celebraciones excesivas, sino brindar tranquilidad mediante la automatización y alertas preventivas.

**Branding y Paleta de Colores**
La paleta cromática ha sido seleccionada cuidadosamente para generar confianza y evocar la naturaleza de los productos orgánicos, manteniendo un alto contraste para la lectura de datos:
*   **Colores Primarios (Acción y Confianza):** Se utilizan tonalidades azules como *Azure Radiance* y *Dodger Blue*. El azul transmite seguridad, estabilidad y limpieza tecnológica.
*   **Colores de Acento y Alerta (Dinamismo):** Se integran tonos anaranjados como *Pumpkin* y *Orange*. Utilizados exclusivamente para llamados a la acción (CTAs) y notificaciones críticas (alertas IoT de temperatura o fechas de vencimiento próximas).
*   **Colores Neutros (Estructura y Legibilidad):** Se emplean variantes de grises (como *Slate Gray* y *Boulder*) y blancos (*Alice Blue*, *White*) para los fondos de los dashboards, reduciendo la fatiga visual.

![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-1.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-2.png)

**Tipografía**
Se seleccionaron dos familias Sans-Serif priorizando la legibilidad en pantallas de múltiples resoluciones:
*   **Arimo:** Utilizada en encabezados, títulos de módulos y cifras destacadas en los dashboards. Su estructura robusta permite una rápida lectura de los KPIs.
*   **Inter:** Asignada a los cuerpos de texto y tablas de datos. Diseñada específicamente para interfaces, garantiza que los datos densos sean legibles en tamaños pequeños.

![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-3.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-4.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-5.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-6.png)

#### 4.1.2. Web Style Guidelines

Para garantizar que la experiencia sea fluida y adaptable (Responsive Web Design), se establecen los siguientes estándares visuales y de interacción:

*   **Sistema de Grillas y Espaciado:** Se utiliza un sistema de espaciado basado en múltiplos de 8px para asegurar consistencia. La estructura base emplea una grilla de 12 columnas para resoluciones de escritorio, adaptándose a 4 columnas en dispositivos móviles.
*   **Puntos de Ruptura (Breakpoints):** El diseño es fluido, con puntos de adaptación clave en 320px (Mobile), 768px (Tablet) y 1024px+ (Desktop/Laptop).
*   **Estados de Interacción:**
    *   *Hover:* Los botones principales y tarjetas aumentan sutilmente su sombra (elevation) y oscurecen su fondo un 10% para indicar interactividad.
    *   *Disabled:* Los botones de acciones incompletas (ej. "Aceptar Pedido" sin haber revisado el lote) se desaturan a *Slate Gray* al 50% de opacidad.
*   **Accesibilidad (A11y):** Los botones principales y enlaces en la versión móvil tienen un área mínima de toque de 44x44px para evitar errores al interactuar en movimiento. Se garantiza un ratio de contraste mínimo de 4.5:1 entre el texto y su fondo.