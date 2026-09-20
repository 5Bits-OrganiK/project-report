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

### 4.2. Information Architecture

La Arquitectura de la Información (IA) de **OrganiK** ha sido diseñada con el objetivo de estructurar, organizar y etiquetar el contenido de la plataforma de manera que los usuarios puedan encontrar la información y completar sus tareas de forma intuitiva.

Dado que la plataforma atiende a dos segmentos con necesidades y permisos operativos distintos, la arquitectura se divide en tres áreas principales: una zona pública orientada a la conversión (Landing Page) y dos zonas privadas (Dashboards) adaptadas al flujo operativo de cada rol (Administrador de Minimarket y Proveedor B2B). Esta separación garantiza que cada usuario acceda únicamente a la información y herramientas relevantes para su gestión.

A continuación, se presenta el Mapa de Sitio (Site Map) jerárquico de la plataforma:

**1. Zona Pública (Landing Page)**
*   **1.1. Inicio:** Propuesta de valor principal.
*   **1.2. Solución:** Explicación del funcionamiento integrado (Inventario, Monitoreo y Abastecimiento).
*   **1.3. Beneficios:** Ventajas de la reducción de mermas y digitalización B2B.
*   **1.4. Equipo:** Presentación del equipo desarrollador.
*   **1.5. Planes y Precios:** Suscripciones para Minimarkets y Proveedores.
*   **1.6. Acceso:**
    *   1.6.1. Iniciar Sesión (Login).
    *   1.6.2. Registro de nueva cuenta.

**2. Zona Privada: Administrador de Minimarket**
*   **2.1. Dashboard Principal:** Resumen de métricas, accesos rápidos y alertas críticas.
*   **2.2. Inventario Local:**
    *   2.2.1. Lista de productos orgánicos.
    *   2.2.2. Control de lotes y fechas de vencimiento.
    *   2.2.3. Registro de mermas y ofertas.
*   **2.3. Monitoreo Ambiental (IoT):**
    *   2.3.1. Estado en tiempo real (Temperatura y Humedad).
    *   2.3.2. Historial de alertas de conservación.
*   **2.4. Abastecimiento:**
    *   2.4.1. Catálogo de proveedores y generación de pedidos.
    *   2.4.2. Bandeja de órdenes de envío (Aprobar recepción / Rechazar).
    *   2.4.3. Historial de operaciones de abastecimiento.
*   **2.5. Configuración:** Perfil del negocio y preferencias de alertas.

**3. Zona Privada: Proveedor B2B**
*   **3.1. Dashboard Principal:** Resumen de ventas, estado de despachos y KPIs comerciales.
*   **3.2. Mi Catálogo:**
    *   3.2.1. Gestión de productos ofrecidos.
    *   3.2.2. Actualización de disponibilidad y lotes en almacén.
*   **3.3. Gestión de Pedidos y Envíos:**
    *   3.3.1. Bandeja de pedidos entrantes (Aprobar / Rechazar).
    *   3.3.2. Generar y gestionar órdenes de envío.
    *   3.3.3. Historial de operaciones de abastecimiento.
*   **3.4. Red de Clientes:** Directorio de minimarkets asociados.
*   **3.5. Configuración:** Perfil de la empresa y detalles logísticos.

![Site Map - Plataforma OrganiK](assets/chapter-04/site-map.png)

#### 4.2.1. Organization Systems

El sistema de organización de **OrganiK** define cómo se estructura y clasifica la información para que los usuarios interactúen con la plataforma sin fricciones. Se han aplicado los siguientes esquemas organizativos:
*   **Organización Visual y Estructural:**
    *   *Jerárquica:* Aplicada en la *Landing Page*, donde la información fluye de mayor a menor importancia.
    *   *Matricial:* Utilizada en los dashboards, permitiendo al usuario navegar entre diferentes dimensiones operativas (Inventario, Pedidos, IoT) sin un orden secuencial estricto.
*   **Esquemas de Categorización:**
    *   *Según Audiencia:* Separa la experiencia del *Administrador de Minimarket* (enfocada en control interno y compras) de la del *Proveedor B2B* (enfocada en ventas y despachos).
    *   *Cronológico:* Aplicado en los historiales de pedidos, registro de mermas y el log de alertas ambientales, ordenando los datos desde el evento más reciente al más antiguo.
    *   *Por Tópicos:* Utilizado para estructurar el catálogo y el inventario físico, facilitando la agrupación de lotes y productos.

#### 4.2.2. Labeling Systems

Para garantizar la comprensión inmediata en entornos operativos rápidos, el sistema de etiquetado se basa en el *Ubiquitous Language* del sector logístico:
*   **Etiquetas de Navegación:** Términos precisos de 1 a 2 palabras (Ej: *Inventario*, *Abastecimiento*, *Mi Catálogo*, *Mermas*).
*   **Etiquetas de Acción (Botones):** Utilizan verbos en infinitivo que indican el resultado de la acción alineados a los User Stories (Ej: *Generar Pedido*, *Aprobar Orden de Envío*, *Crear Orden*).
*   **Etiquetas de Estado:** Emplean un código de color universal respaldado por texto claro para el seguimiento (Ej: *Pendiente* [Amarillo], *Aprobado* [Verde], *Rechazado* [Rojo], *En Ruta* [Azul]).
*   **Apoyo Iconográfico:** Las etiquetas de navegación principal siempre están acompañadas de iconos estandarizados para acelerar el reconocimiento visual.

#### 4.2.3. SEO Tags and Meta Tags

Para asegurar el posicionamiento en motores de búsqueda y la correcta previsualización al compartir enlaces, se han configurado los siguientes metadatos:
*   **Landing Page (Pública):**
    *   `Title:` `<title>OrganiK | Gestión de Inventarios, Monitoreo IoT y Abastecimiento B2B</title>`
    *   `Meta Description:` `<meta name="description" content="Plataforma SaaS especializada en productos orgánicos. Conecta minimarkets y proveedores, controla inventarios, previene mermas con sensores IoT y gestiona pedidos B2B.">`
    *   `Meta Keywords:` `<meta name="keywords" content="minimarkets, productos orgánicos, abastecimiento B2B, control de inventario, monitoreo IoT, reducir mermas">`
*   **Web Application (Privada):** Dado que requiere autenticación, los motores de búsqueda no indexarán el contenido interno (`<meta name="robots" content="noindex, nofollow">`), protegiendo la privacidad operativa de los clientes. Se usan títulos dinámicos en la pestaña (Ej. `<title>Inventario - OrganiK</title>`).

#### 4.2.4. Searching Systems

Debido al alto volumen transaccional, OrganiK implementa un sistema de búsqueda robusto para reducir el tiempo de localización de datos:
*   **Búsqueda Global:** Ubicada en la cabecera del dashboard, permite realizar consultas mediante coincidencia de cadenas (ej. buscar por producto "Manzana" o ID de pedido "ORD-0012").
*   **Filtros Contextuales:** Menús desplegables en las tablas de datos para refinar resultados (ej. filtrar inventario por estado "Próximo a Vencer", o filtrar pedidos por "Proveedor").
*   **Presentación de Resultados:** Los datos se presentan en *Data Tables* ordenables y paginadas para no sobrecargar la vista.

#### 4.2.5. Navigation Systems

El sistema de navegación está estructurado para que los usuarios interactúen con la menor cantidad de clics posibles, adaptándose al comportamiento *Mobile-First*:
*   **Navegación Global (Landing Page):** *Sticky Top Navbar* con anclas (anchor links) a secciones clave y un botón *Call-to-Action* destacado ("Iniciar Sesión").
*   **Navegación Global (Web App):** *Sidebar* lateral izquierda colapsable en escritorio, y menú *Hamburguesa* en móviles para facilitar el uso en pantallas pequeñas.
*   **Navegación Local:** Pestañas (Tabs) dentro de un mismo módulo para separar sub-vistas (ej. Dentro del módulo "Inventario", pestañas separadas para *Stock Activo*, *Lotes* y *Mermas*).
*   **Navegación Suplementaria:** Ruta de migas de pan (Breadcrumbs) en la cabecera (ej. `OrganiK > Abastecimiento > Detalle Pedido ORD-0012`) que orienta al usuario y le permite retroceder niveles sin perder contexto.