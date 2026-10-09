# Capítulo IV: Product Design

## 4.1. Style Guidelines.

Esta sección establece las bases visuales y de comunicación para mantener la consistencia en todos los productos digitales de OrganiK (Landing Page y Web Application). El objetivo es contar con un repositorio centralizado que facilite la escalabilidad del diseño y garantice una experiencia de usuario coherente para quienes gestionan el inventario, la conservación y el abastecimiento de productos orgánicos.

### 4.1.1. General Style Guidelines.

**Tono de Comunicación y Lenguaje**
La comunicación de OrganiK se rige bajo cuatro dimensiones principales para establecer confianza en un entorno B2B:
*   **Formal vs. Casual:** Ligeramente formal. Se dirige al usuario con respeto profesional, pero empleando términos claros y directos para agilizar la gestión operativa sin burocracia.
*   **Divertido vs. Serio:** Serio. Al tratarse de una herramienta para el control de inventarios, prevención de pérdidas económicas y abastecimiento, el enfoque debe transmitir seguridad y fiabilidad.
*   **Respetuoso vs. Irreverente:** Respetuoso. Considera la alta carga operativa y el estrés de los usuarios (como los administradores de minimarkets), mostrándose como un asistente empático.
*   **Entusiasta vs. Sereno:** Sereno. Las interfaces e interacciones no buscan abrumar al usuario con celebraciones excesivas, sino brindar tranquilidad mediante la automatización y alertas preventivas.

La interfaz se ofrece en español (idioma por defecto) y en inglés, con selector de idioma visible en la cabecera.

**Branding y Paleta de Colores**
La paleta cromática evoca la naturaleza de los productos orgánicos y mantiene un alto contraste para la lectura de datos. Todo el producto se construye sobre una escala de verdes con un acento lima y neutros tintados de verde:
*   **Colores Primarios (Marca y Acción):** *Forest* (`#0B2B1C`) para la barra lateral y superficies de énfasis; *Green* (`#17803F`) y *Green Strong* (`#116A33`) para botones principales, enlaces y estados activos; *Leaf* (`#2FA866`) para gráficos e indicadores positivos.
*   **Colores de Acento (Dinamismo):** *Lime* (`#C8E04F`) y *Lime Soft* (`#D8EC8A`) para resaltar el elemento activo, cifras destacadas y llamados a la acción secundarios.
*   **Colores Neutros (Estructura y Legibilidad):** *Mist* (`#EDF3EE`) como fondo de pantalla, *Tint* (`#E6F3E9`) y *Tint Strong* (`#D3EBD9`) para superficies y filas, *Border* (`#D5E4D8`) para divisores, *Muted* (`#4E6556`) para texto secundario y blanco para tarjetas, reduciendo la fatiga visual.
*   **Colores de Estado (Alerta):** *Danger* (`#B42318`) con fondo *Danger Soft* (`#FDE8E6`) para errores, vencimientos críticos y alertas de conservación; *Warning* (`#7A4B00`) con fondo *Warning Soft* (`#FBE7A6`) para productos próximos a vencer y solicitudes pendientes.

![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-1.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-2.png)

**Tipografía**
Se seleccionaron dos familias priorizando la legibilidad en pantallas de múltiples resoluciones (con Inter reservada para los wireframes de baja fidelidad):
*   **Fraunces (SemiBold):** Utilizada en títulos de pantalla, títulos de tarjetas y cifras destacadas (KPIs) del dashboard. Su carácter serif aporta calidez y un tono natural acorde con el rubro orgánico. Estilos: *Display* 32 px, *Title* 24 px y *Figure* 36 px.
*   **Geist:** Asignada a la interfaz: cuerpos de texto, tablas de datos, formularios, botones y etiquetas. Diseñada para interfaces, garantiza que los datos densos sean legibles en tamaños pequeños. Estilos: *Body* 14 px, *Body Medium* 15 px, *Caption* 12.5 px y *Label* 12 px en mayúsculas.
*   **Inter:** Usada únicamente en los wireframes (12.7 px) para mantener un aspecto neutro y sin decoración.

![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-3.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-4.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-5.png)
![General Style Guide - Colores y Tipografía](assets/chapter-04/style-guideline-6.png)

### 4.1.2. Web Style Guidelines.

Para garantizar que la experiencia sea fluida y adaptable (Responsive Web Design), se establecen los siguientes estándares visuales y de interacción:

*   **Sistema de Espaciado y Forma:** Se utiliza un espaciado basado en múltiplos de 4 y 8 px. Las tarjetas y paneles usan esquinas de 12 px y los campos y botones de 8 px, con sombras suaves que se elevan al interactuar. La barra lateral tiene un ancho fijo de 280 px en escritorio.
*   **Puntos de Ruptura (Breakpoints):** El diseño es fluido, con puntos de adaptación en 600 px, 700 px, 900 px y 1000 px, donde las cuadrículas pasan a una sola columna y los paneles se reorganizan.
*   **Estados de Interacción:**
    *   *Hover:* Los botones y tarjetas elevan sutilmente su sombra y oscurecen su fondo hacia *Green Strong*. Estos efectos se activan solo en dispositivos con puntero preciso (`hover: hover`).
    *   *Disabled:* Los botones de acciones incompletas (ej. "Aceptar recepción" sin completar los datos) se desaturan y reducen su opacidad.
    *   *Error:* Los campos inválidos muestran el borde y el mensaje en *Danger*; el formulario de acceso sacude el panel ante credenciales incorrectas.
*   **Movimiento:** Las pantallas aparecen con entradas suaves y escalonadas (desenfoque y desplazamiento leve, 720 ms), las cifras de los KPI cuentan hasta su valor final y las transiciones entre vistas usan *View Transitions*. Todo movimiento se desactiva cuando el usuario tiene activada la preferencia `prefers-reduced-motion`.
*   **Accesibilidad (A11y):** Se garantiza un ratio de contraste mínimo de 4.5:1 entre el texto y su fondo, y los estados no dependen solo del color: siempre van acompañados de texto o ícono.

## 4.2. Information Architecture.

La Arquitectura de la Información (IA) de **OrganiK** ha sido diseñada con el objetivo de estructurar, organizar y etiquetar el contenido de la plataforma de manera que los usuarios puedan encontrar la información y completar sus tareas de forma intuitiva.

Dado que la plataforma atiende a dos segmentos con necesidades y permisos operativos distintos, la arquitectura se divide en tres áreas principales: una zona pública orientada a la conversión (Landing Page) y dos zonas privadas (Web Application) adaptadas al flujo operativo de cada rol (Administrador de Minimarket y Proveedor B2B). Esta separación garantiza que cada usuario acceda únicamente a la información y herramientas relevantes para su gestión.

La landing y la aplicación son productos separados que se conectan por enlaces: el botón *Iniciar sesión* de la landing lleva a la pantalla de acceso de la aplicación, y esta ofrece el enlace de regreso a la landing. Las dos zonas privadas comparten el mismo shell de navegación (barra lateral, cabecera con búsqueda global y selector de idioma) y las rutas están protegidas por autenticación; el rol de cada cuenta se administra desde *Usuarios y roles*.

A continuación, se presenta el Mapa de Sitio (Site Map) jerárquico de la plataforma:

**1. Zona Pública (Landing Page)**
*   **1.1. Inicio:** Propuesta de valor principal.
*   **1.2. Solución:** Explicación del funcionamiento integrado (Inventario, Conservación y Abastecimiento).
*   **1.3. Beneficios:** Ventajas de la reducción de mermas y digitalización B2B.
*   **1.4. Equipo:** Presentación del equipo desarrollador.
*   **1.5. Planes y Precios:** Suscripciones para Minimarkets y Proveedores.
*   **1.6. Acceso:** Iniciar sesión (enlace a la Web Application). Selector de idioma ES/EN en la barra de navegación.

**2. Zona Privada: Administrador de Minimarket**
*   **2.1. Panel (Dashboard):** Resumen de indicadores (KPI), accesos rápidos y alertas críticas.
*   **2.2. Inventario:**
    *   2.2.1. Lista de existencias con el estado de cada lote (vigente, próximo a vencer, vencido).
    *   2.2.2. Registrar stock.
    *   2.2.3. Productos: catálogo de productos orgánicos por categoría y alta de nuevo producto.
*   **2.3. Conservación (Monitoreo Ambiental):**
    *   2.3.1. Lecturas de temperatura y humedad (simuladas en la validación inicial).
    *   2.3.2. Historial de alertas de conservación.
*   **2.4. Abastecimiento:**
    *   2.4.1. Proveedores: directorio, perfil del proveedor, nuevo proveedor y proveedores sugeridos.
    *   2.4.2. Solicitudes: necesidades de reposición compartidas con proveedores y nueva solicitud.
    *   2.4.3. Envíos: bandeja de pedidos creados por proveedores (Aceptar / Rechazar recepción) y su estado e historial.
*   **2.5. Análisis y alertas (Analytics):** Indicadores operativos, alertas y generación de reportes.
*   **2.6. Administración:**
    *   2.6.1. Usuarios y roles: lista de cuentas, estado y alta de nuevo usuario.
    *   2.6.2. Perfiles: perfiles de minimarkets y proveedores.
    *   2.6.3. Configuración: perfil del negocio y preferencias de alertas.

**3. Zona Privada: Proveedor B2B**
*   **3.1. Panel (Dashboard):** Resumen de pedidos, estado de despachos y KPIs comerciales.
*   **3.2. Mi Catálogo:**
    *   3.2.1. Gestión de productos ofrecidos (agregar producto).
    *   3.2.2. Actualización de disponibilidad y lotes en almacén (registrar stock).
*   **3.3. Gestión de Pedidos:**
    *   3.3.1. Consulta de necesidades de reposición compartidas por minimarkets vinculados (Solicitudes).
    *   3.3.2. Creación de pedidos dirigidos a minimarkets (Envíos).
    *   3.3.3. Consulta de estado e historial de pedidos; el pedido queda pendiente hasta que el administrador destinatario lo acepta o rechaza.
*   **3.4. Red de Clientes:** Directorio de minimarkets asociados (Perfiles).
*   **3.5. Configuración:** Perfil de la empresa y detalles logísticos.

![Site Map - Plataforma OrganiK](assets/chapter-04/site-map.png)

### 4.2.1. Organization Systems.

El sistema de organización de **OrganiK** define cómo se estructura y clasifica la información para que los usuarios interactúen con la plataforma sin fricciones. Se han aplicado los siguientes esquemas organizativos:
*   **Organización Visual y Estructural:**
    *   *Jerárquica:* Aplicada en la *Landing Page*, donde la información fluye de mayor a menor importancia.
    *   *Matricial:* Utilizada en la aplicación, permitiendo al usuario navegar entre diferentes dimensiones operativas (Inventario, Solicitudes, Envíos, Conservación) desde la barra lateral sin un orden secuencial estricto.
*   **Esquemas de Categorización:**
    *   *Según Audiencia:* Separa la experiencia del *Administrador de Minimarket* (enfocada en control interno y compras) de la del *Proveedor B2B* (enfocada en catálogo, ventas y despachos).
    *   *Cronológico:* Aplicado en los historiales de pedidos y en el registro de alertas de conservación, ordenando los datos desde el evento más reciente al más antiguo.
    *   *Por Tópicos:* Utilizado para estructurar el catálogo por categorías de producto y el inventario físico, facilitando la agrupación de lotes y productos.

### 4.2.2. Labeling Systems.

Para garantizar la comprensión inmediata en entornos operativos rápidos, el sistema de etiquetado se basa en el *Ubiquitous Language* del sector logístico:
*   **Etiquetas de Navegación:** Términos precisos de 1 a 3 palabras (Ej: *Inventario*, *Productos*, *Solicitudes*, *Envíos*, *Conservación*, *Usuarios y roles*).
*   **Etiquetas de Acción (Botones):** Utilizan verbos en infinitivo que indican el resultado de la acción, alineados a los User Stories (Ej: *Agregar producto*, *Registrar stock*, *Nueva solicitud*, *Generar reporte*).
*   **Etiquetas de Estado:** Emplean un código de color respaldado por texto claro para el seguimiento (Ej: *Pendiente* [Ámbar], *Aprobado/Vigente* [Verde], *Rechazado/Vencido* [Rojo]).
*   **Apoyo Iconográfico:** Las etiquetas de navegación principal siempre están acompañadas de iconos de Material Design para acelerar el reconocimiento visual.

### 4.2.3. SEO Tags and Meta Tags

Para asegurar el posicionamiento en motores de búsqueda y la correcta previsualización al compartir enlaces, se han configurado los siguientes metadatos:
*   **Landing Page (Pública):**
    *   `Title:` `<title>Organik · Control de inventario para minimarkets</title>`
    *   `Meta Description:` `<meta name="description" content="Organik centraliza inventario, lotes y vencimientos para que tu minimarket reponga a tiempo y deje de perder producto.">`
    *   `Open Graph:` `<meta property="og:title" content="Organik · Control de inventario para minimarkets">` y `<meta property="og:description" content="Anticipa vencimientos y gestiona el abastecimiento en tiempo real.">`
*   **Web Application (Privada):** Dado que requiere autenticación, el contenido interno no debe ser indexado por los motores de búsqueda (`<meta name="robots" content="noindex, nofollow">`), protegiendo la privacidad operativa de los clientes. Se usan títulos dinámicos en la pestaña según la pantalla activa (Ej. `Inventario - OrganiK`).

### 4.2.4. Searching Systems.

Debido al alto volumen transaccional, OrganiK implementa un sistema de búsqueda para reducir el tiempo de localización de datos:
*   **Búsqueda Global:** Ubicada en la cabecera de la aplicación, permite realizar consultas por coincidencia de texto (ej. buscar el producto "Manzana" o un proveedor) y navegar directamente al resultado.
*   **Filtros Contextuales:** Controles en las tablas de datos para refinar resultados (ej. filtrar inventario por estado "Próximo a vencer", o filtrar solicitudes por estado).
*   **Presentación de Resultados:** Los datos se presentan en *Data Tables* ordenables para no sobrecargar la vista.

### 4.2.5. Navigation Systems.

El sistema de navegación está estructurado para que los usuarios interactúen con la menor cantidad de clics posibles:
*   **Navegación Global (Landing Page):** *Sticky Top Navbar* con anclas (anchor links) a secciones clave, selector de idioma ES/EN y un enlace destacado "Iniciar sesión" que lleva a la aplicación.
*   **Navegación Global (Web App):** *Sidebar* lateral izquierda con los módulos principales, cada uno con su icono, y cabecera con búsqueda global, selector de idioma y cierre de sesión.
*   **Navegación Local:** Cada módulo ofrece sus acciones principales como botones sobre la tabla (ej. *Registrar stock* en Inventario, *Nueva solicitud* en Solicitudes) que abren el formulario correspondiente, con un botón para volver a la lista.
*   **Control de Acceso:** Las rutas privadas están protegidas por una guarda de autenticación que conserva la dirección solicitada y la recupera tras iniciar sesión; si el usuario ya tiene sesión, el login lo redirige al panel.

## 4.3. Landing Page UI Design.

En esta sección se presenta la propuesta de Interfaz de Usuario (UI) para la Landing Page de **OrganiK**. El diseño visual traduce las decisiones tomadas en la Arquitectura de la Información y las Guías de Estilo en una interfaz tangible orientada a la conversión. El objetivo principal de esta página pública es comunicar claramente la propuesta de valor integrada (gestión de inventarios, conservación y abastecimiento) y dirigir a los usuarios hacia el inicio de sesión.

### 4.3.1. Landing Page Wireframe.

Los wireframes representan el esqueleto estructural de la página en baja fidelidad, desprovistos de color y tipografía final, para centrar el análisis en la usabilidad y la distribución del contenido. Se elaboraron en las versiones en español e inglés.

**Explicación del Diseño y Arquitectura:**
*   **Estructura Visual:** Se ha optado por un diseño de bloque único (*Single-page layout*) que guía al usuario a través de un viaje lógico: Problema $\rightarrow$ Solución (Características de OrganiK) $\rightarrow$ Planes $\rightarrow$ Call to Action (CTA).
*   **Jerarquía de Información:** La sección *Hero* (cabecera principal) destaca la propuesta de valor central con botones de acción inmediata. A medida que se hace *scroll*, la información se desglosa en bloques asimétricos o de cuadrícula (grid) para explicar módulos específicos como el control de lotes y las alertas de conservación.
*   **Diseño Inclusivo:** Para la versión *Mobile Web Browser*, el wireframe estructural apila los contenedores en una sola columna. Las áreas de interacción tienen un área táctil amplia para evitar frustración motriz en dispositivos móviles.

![Landing Page Wireframe - Plataforma OrganiK](assets/chapter-04/landing-page-wireframe.png)

### 4.3.2. Landing Page Mock-up.

Los mock-ups representan el diseño final en alta fidelidad, integrando el *Design System* establecido para los productos digitales de OrganiK y los textos de la landing publicada.

**Explicación de la Aplicación Visual y UI:**
*   **Aplicación de Style Guidelines:** El diseño hace uso de un fondo oscuro en *Forest* con acentos en *Lime* y *Green*, que transmite una sensación de naturaleza, modernidad y confianza. Los colores de acción se reservan estratégicamente para los componentes interactivos principales (botón de inicio de sesión y llamados a la acción), atrayendo naturalmente la vista del usuario.
*   **Tipografía y Legibilidad:** Se aplica *Fraunces* en los encabezados principales (H1, H2), logrando impacto y calidez; mientras que los párrafos explicativos y las tarjetas utilizan *Geist*, garantizando una legibilidad óptima.
*   **Consistencia de Interacción:** La barra de navegación superior (Navbar) se mantiene fija (*sticky*) durante el *scroll*, permitiendo acceder al enlace de "Iniciar sesión" en cualquier momento de la lectura.
*   **Accesibilidad Visual:** Se ha verificado que el contraste entre los textos y sus fondos supere el ratio mínimo de 4.5:1 exigido por las normativas de accesibilidad web (WCAG).

![Landing Page Mockup - Plataforma OrganiK](assets/chapter-04/landing-page-mockup.png)

## 4.4. Web Applications UX/UI Design.

Esta sección documenta el diseño de la aplicación web de OrganiK: la estructura de sus pantallas en baja fidelidad, los recorridos entre ellas, su diseño visual final y los flujos de usuario. Las pantallas se diseñaron a partir de la aplicación implementada, aplicando la paleta y tipografía definidas en 4.1.

### 4.4.1. Web Applications Wireframes.

Los wireframes de la aplicación muestran la distribución de contenido de cada pantalla en escala de grises. Todas las pantallas comparten el mismo esqueleto: barra lateral de navegación a la izquierda, cabecera con búsqueda global y área de contenido con título, indicadores y tabla o formulario.

**Pantallas principales:** Login, Dashboard, Inventario, Productos, Solicitudes, Envíos, Proveedores, Perfil de proveedor, Conservación, Análisis y alertas, Analytics, Usuarios y roles, Perfiles y Configuración.

**Pantallas de interacción:** Agregar producto, Registrar stock, Nueva solicitud, Aceptar recepción, Nuevo proveedor, Ver alertas, Generar reporte, Ver proveedores sugeridos y Nuevo usuario.

![Web Applications Wireframes - Pantallas principales](assets/chapter-04/web-wireframes-screens.png)

![Web Applications Wireframes - Interacciones](assets/chapter-04/web-wireframes-interactions.png)

### 4.4.2. Web Applications Wireflow Diagrams.

Los wireflows combinan los wireframes con las transiciones entre pantallas. A continuación se describen los recorridos principales:

*   **Acceso:** Landing Page $\rightarrow$ *Iniciar sesión* $\rightarrow$ Login $\rightarrow$ Dashboard. Si el usuario intenta abrir una ruta privada sin sesión, es enviado al Login y, al autenticarse, vuelve a la ruta solicitada.
*   **Registro de existencias:** Dashboard $\rightarrow$ Inventario $\rightarrow$ *Registrar stock* $\rightarrow$ Formulario $\rightarrow$ Inventario actualizado.
*   **Catálogo:** Productos $\rightarrow$ *Agregar producto* $\rightarrow$ Formulario $\rightarrow$ Catálogo actualizado.
*   **Abastecimiento:** Solicitudes $\rightarrow$ *Nueva solicitud* $\rightarrow$ Envíos $\rightarrow$ *Aceptar recepción* (el inventario se actualiza una sola vez, al aceptar).
*   **Proveedores:** Proveedores $\rightarrow$ Perfil del proveedor / *Nuevo proveedor* / Proveedores sugeridos.
*   **Conservación:** Conservación $\rightarrow$ *Ver alertas* $\rightarrow$ Alertas de conservación.
*   **Analítica:** Análisis y alertas $\rightarrow$ *Generar reporte*.
*   **Administración:** Usuarios y roles $\rightarrow$ *Nuevo usuario*.

![Web Applications Wireflow Diagram](assets/chapter-04/web-wireflow.png)

### 4.4.2. Web Applications Mock-ups.

Los mock-ups muestran el diseño de alta fidelidad de cada pantalla con la paleta verde y las tipografías Fraunces y Geist. Entre las decisiones visuales principales:

*   **Barra lateral en *Forest* (verde bosque)** con el módulo activo resaltado en *Lime*, de modo que el usuario siempre sabe dónde está.
*   **Tarjetas de indicadores (KPI)** con cifras en Fraunces que cuentan hasta su valor final al cargar la pantalla.
*   **Tablas de datos** sobre fondo blanco con filas en *Tint* al pasar el cursor, y etiquetas de estado con color y texto (Vigente, Próximo a vencer, Vencido, Pendiente, Aprobado, Rechazado).
*   **Alertas** de vencimiento y de conservación en tonos *Warning* y *Danger*, usados únicamente para lo que requiere atención.
*   **Formularios** en tarjetas con campos de 8 px de radio, mensajes de validación en línea y botón principal en *Green*.
*   **Pantalla de acceso** dividida: panel de marca a un lado y formulario al otro, con enlace de regreso a la landing.

![Web Applications Mock-ups - Pantallas principales](assets/chapter-04/web-mockups-screens.png)

![Web Applications Mock-ups - Interacciones](assets/chapter-04/web-mockups-interactions.png)

### 4.4.3. Web Applications User Flow Diagrams.

Los diagramas de flujo de usuario describen, paso a paso, cómo el usuario completa las tareas principales.

**Flujo 1 – Iniciar sesión**
1. El usuario ingresa desde la landing o directamente a la aplicación.
2. Escribe su correo y contraseña en el Login.
3. Si las credenciales son incorrectas, el panel muestra el error y permite reintentar; si la cuenta está pendiente de activación, se informa.
4. Si son correctas, se crea la sesión y se muestra el Dashboard (o la ruta que intentó abrir).

**Flujo 2 – Registrar stock**
1. Desde Inventario, el usuario selecciona *Registrar stock*.
2. Elige el producto e ingresa cantidad, lote y fecha de vencimiento.
3. El formulario valida los datos; si hay errores, los marca en línea.
4. Al guardar, el inventario se actualiza y se confirma con una notificación.

**Flujo 3 – Gestionar un pedido**
1. El administrador comparte una necesidad con *Nueva solicitud*.
2. El proveedor crea el pedido dirigido al minimarket.
3. Desde Envíos, el administrador destinatario revisa el pedido y elige *Aceptar* o *Rechazar*.
4. Si acepta, el inventario se actualiza una sola vez; si rechaza, las existencias no cambian.

**Flujo 4 – Atender una alerta de conservación**
1. El Dashboard o Conservación muestra una alerta por temperatura o humedad fuera de rango.
2. El usuario abre *Ver alertas* y revisa el detalle.
3. Toma acción sobre el lote afectado (registrar merma o cambiar su estado).

![Web Applications User Flow Diagrams](assets/chapter-04/web-user-flows.png)

## 4.5. Web Applications Prototyping.

El prototipo de la aplicación web es una aplicación funcional desarrollada en Angular, con datos simulados en memoria y latencia artificial para reproducir la experiencia real. Permite recorrer todas las pantallas del diseño sin depender de un servidor, y valida los flujos descritos en 4.4 antes de integrar el backend.

*   **Tecnología:** Angular, Angular Material, Reactive Forms y ngx-translate (español e inglés).
*   **Organización:** Un contexto por bounded context, cada uno con las capas `domain`, `infrastructure`, `application` y `presentation`. Los datos provienen de repositorios en memoria que más adelante se reemplazarán por la API REST.
*   **Cobertura:** Dashboard, Inventario, Productos, Solicitudes, Envíos, Proveedores, Conservación, Analytics, Usuarios, Perfiles y Configuración, junto con sus formularios de interacción.
*   **Acceso:** Inicio de sesión con cuentas de demostración, sesión por pestaña del navegador y rutas protegidas por guardas de autenticación.
*   **Calidad:** 130 pruebas automatizadas, flujo de trabajo con ramas Gitflow y commits convencionales.
*   **Repositorios:** La Web Application se encuentra en `5Bits-OrganiK/organik-web-application` y la Landing Page en `5Bits-OrganiK/organik-landing-page-static`, como repositorios independientes conectados por enlaces.

![Web Applications Prototype - Flujo del prototipo](assets/chapter-04/web-prototype-flow.png)

## 4.6. Domain-Driven Software Architecture.

La arquitectura propuesta de OrganiK se construye a partir del análisis del dominio de gestión de productos orgánicos, inventario, conservación y abastecimiento para minimarkets y proveedores. Los bounded contexts delimitan responsabilidades de diseño. El flujo de referencia es el definido en los capítulos I y III: el proveedor crea un pedido dirigido al minimarket y solo el administrador destinatario puede aceptarlo o rechazarlo antes de modificar su inventario.

En las siguientes secciones se presenta cada nivel del modelo arquitectónico y la relación entre sus elementos.

### 4.6.1. Design-Level Event Storming.

Para identificar eventos y reglas de negocio, el Event Storming examina registro de productos, control de inventario, conservación, necesidades de reposición, pedidos propuestos por proveedores, decisiones del administrador y alertas.

El desarrollo del proceso de Domain-Driven Design se realizó en Lucidchart: [https://lucid.app/lucidchart/bc1299f7-d185-4b18-9730-34001b6b8c26/edit?invitationId=inv_71264c50-e7df-4ffe-9b92-f4fd5c1bf3d5&page=8YLvPajJeQAxO#](https://lucid.app/lucidchart/bc1299f7-d185-4b18-9730-34001b6b8c26/edit?invitationId=inv_71264c50-e7df-4ffe-9b92-f4fd5c1bf3d5&page=8YLvPajJeQAxO#)

A continuación, se presentan la leyenda utilizada y las relaciones clave entre los bounded contexts identificados:

![Leyenda Bounded Contexts](assets/chapter-04/leyendabc.png)

![Key Relations Bounded Contexts](assets/chapter-04/keyrelationsbc.png)

A partir de este análisis se identificaron los siguientes bounded contexts:

1. **IAM**

   El bounded context IAM se encarga de la autenticación, autorización y control de acceso dentro de OrganiK. Gestiona usuarios, roles y permisos, asegurando que cada actor, como el administrador de minimarket o el proveedor, acceda únicamente a las funcionalidades correspondientes a su perfil.

   ![IAM Bounded Context](assets/chapter-04/bciam.png)

2. **Profiles**

   El bounded context Profiles administra la información de los usuarios, minimarkets y proveedores registrados en la plataforma. Su propósito es centralizar los datos de perfil necesarios para personalizar la experiencia, controlar responsabilidades y asociar operaciones con el actor correspondiente.

   ![Profiles Bounded Context](assets/chapter-04/bcprofiles.png)

3. **Dashboard**

   El bounded context Dashboard presenta una vista general del estado operativo de la plataforma según el rol del usuario. Permite visualizar indicadores relevantes sobre inventario, abastecimiento, conservación, alertas y actividad reciente.

   ![Dashboard Bounded Context](assets/chapter-04/bcdashboard.png)

4. **Analytics**

   El bounded context Analytics procesa información operativa para generar indicadores, métricas y resúmenes que apoyan la toma de decisiones. Permite analizar el estado del inventario, productos próximos a vencer, alertas de conservación, desempeño de proveedores y movimientos de abastecimiento.

   ![Analytics Bounded Context](assets/chapter-04/bcanalytics.png)

5. **Inventory**

   El bounded context Inventory gestiona los productos registrados en el minimarket, sus cantidades, lotes, fechas de vencimiento, estados y movimientos asociados. Su propósito es mantener trazabilidad sobre las existencias y facilitar el control de productos disponibles, en riesgo o con pérdidas.

   ![Inventory Bounded Context](assets/chapter-04/bcinventory.png)

6. **Products**

   El bounded context Products administra el catálogo de productos orgánicos ofrecidos por proveedores o registrados por minimarkets. Centraliza información como nombre, categoría, descripción, unidad de medida, disponibilidad y datos relevantes para su comercialización o abastecimiento.

   ![Products Bounded Context](assets/chapter-04/bcproducts.png)

7. **Requisition**

   El bounded context Requisition registra necesidades de reposición que el administrador puede compartir con proveedores vinculados. Una necesidad no constituye un pedido ni modifica el inventario; corresponde a US 018 y US 020 del capítulo III.

   ![Requisition Bounded Context](assets/chapter-04/bcrequisition.png)

8. **Procurements**

   El bounded context Procurements gestiona los pedidos creados por proveedores, su estado y la decisión del administrador destinatario. La aceptación registra la decisión y actualiza el inventario una sola vez; el rechazo conserva las existencias. En este alcance no se define una orden de envío separada.

   ![Procurements Bounded Context](assets/chapter-04/bcprocurenments.png)

9. **Suppliers**

   El bounded context Suppliers gestiona el directorio de proveedores de productos orgánicos, así como los productos que ofrecen y su participación dentro de los procesos de abastecimiento.

   ![Suppliers Bounded Context](assets/chapter-04/bcsuppliers.png)

10. **Conservation**

   El bounded context Conservation permite monitorear condiciones de conservación de productos, como temperatura y humedad. Su propósito es identificar riesgos de deterioro y generar alertas cuando las condiciones se encuentren fuera de los rangos aceptables.

   ![Conservation Bounded Context](assets/chapter-04/bcconservation.png)

11. **Communication**

   El bounded context Communication gestiona alertas y notificaciones propuestas para vencimientos, condiciones de conservación, necesidades de reposición compartidas y cambios de estado de los pedidos.

   ![Communication Bounded Context](assets/chapter-04/bccommunication.png)

12. **Shared Kernel**

   El bounded context Shared Kernel contiene elementos comunes utilizados por los demás contextos, como utilidades compartidas, contratos base, configuraciones, validaciones comunes y estructuras transversales del sistema.

   ![Shared Kernel Bounded Context](assets/chapter-04/bcshared.png)

<div style="page-break-after: always;"></div>

### 4.6.2. Software Architecture Context Diagram.

En este nivel se presenta una vista de alto nivel de la arquitectura, donde el foco está en el sistema OrganiK como una caja negra y en las interacciones que mantiene con sus usuarios y servicios externos.

El context diagram muestra al **OrganiK Software System** como el sistema central, rodeado por los principales actores y sistemas con los que interactúa:

- **Administrador de minimarket**: registra productos y lotes, consulta conservación y disponibilidad, comparte necesidades de reposición y acepta o rechaza los pedidos dirigidos a su negocio.
- **Proveedor de productos orgánicos**: mantiene catálogo, lotes y disponibilidad; consulta necesidades compartidas, crea pedidos dirigidos a minimarkets y sigue su estado.
- **Administrador del sistema**: usuario encargado de gestionar cuentas, roles, permisos y configuración general de la plataforma.
- **Servicio de notificaciones**: integración propuesta para avisos de vencimientos, conservación y decisiones sobre pedidos.
- **Servicio de monitoreo de conservación**: fuente futura de lecturas de temperatura y humedad; los flujos iniciales se validarán con datos simulados.

En el diagrama se representan las relaciones entre estos elementos, destacando que los actores humanos interactúan con OrganiK mediante la aplicación web, mientras que el sistema coordina los procesos internos y las integraciones necesarias para alertas, monitoreo y trazabilidad operativa.

![Software Architecture Context Diagram](assets/chapter-04/Contexto-dark.png)


---

### 4.6.3. Software Architecture Container Diagrams.

En el nivel de contenedores, la arquitectura de OrganiK se organiza en aplicaciones y fuentes de datos que colaboran para brindar la experiencia completa de la plataforma.

La arquitectura lógica de OrganiK se estructura en los siguientes contenedores:

- **Landing Page**: aplicación web pública orientada a presentar la propuesta de valor de OrganiK, sus beneficios y funcionalidades principales para minimarkets y proveedores de productos orgánicos.
- **Single Page Application (SPA)**: aplicación web propuesta en Angular para inventario, productos, proveedores, necesidades de reposición, pedidos, conservación, dashboards, perfiles e IAM.
- **API REST Application**: backend encargado de exponer los servicios de negocio mediante endpoints REST. Centraliza la lógica de aplicación, validaciones, reglas de dominio y coordinación entre bounded contexts.
- **Database**: persistencia propuesta para usuarios, perfiles, productos, inventario, lotes, necesidades de reposición, pedidos, decisiones, proveedores, alertas y lecturas de conservación.

En el diagrama se observa que:

- Los usuarios pueden conocer la solución mediante la **Landing Page** y luego acceder a la **SPA**.
- La **SPA** se comunica con la **API REST Application** mediante peticiones HTTP/HTTPS y mensajes JSON.
- La **API REST Application** procesa la lógica del dominio y persiste la información en la **Database**.
- Los módulos de comunicación y conservación pueden integrarse con servicios externos para notificaciones y monitoreo de condiciones ambientales.

![Software Architecture Container Diagram](assets/chapter-04/Contenedor-dark.png)

---

### 4.6.4. Software Architecture Components Diagrams.

En el nivel de componentes se detalla la descomposición interna de la arquitectura de OrganiK, especialmente del contenedor **API REST Application**, donde se agrupan los componentes principales alineados con los bounded contexts del dominio.


La API REST organiza sus responsabilidades en componentes especializados:

- **IAM Component**: gestiona autenticación, autorización, usuarios, roles y permisos.
- **Profiles Component**: administra perfiles de usuarios, minimarkets y proveedores.
- **Dashboard Component**: consolida información relevante para mostrar vistas generales según el rol del usuario.
- **Analytics Component**: procesa indicadores, métricas y reportes operativos.
- **Inventory Component**: gestiona inventario, lotes, cantidades, vencimientos, pérdidas y ofertas.
- **Products Component**: administra el catálogo de productos orgánicos registrados u ofrecidos.
- **Requisition Component**: gestiona necesidades de reposición compartidas por minimarkets.
- **Procurements Component**: administra pedidos propuestos por proveedores, decisiones del administrador y actualización controlada del inventario.
- **Suppliers Component**: gestiona proveedores y sus productos ofrecidos.
- **Conservation Component**: monitorea condiciones de conservación y detecta riesgos.
- **Communication Component**: administra alertas y notificaciones del sistema.
- **Shared Kernel Component**: agrupa elementos transversales reutilizados por los demás componentes.

#### API REST Component Diagram

![API REST Component Diagram](assets/chapter-04/APIRestComponentDiagram-dark.png)

#### IAM Component Diagram

![IAM Component Diagram](assets/chapter-04/IAMBCComponentDiagram-dark.png)

#### Profiles Component Diagram

![Profiles Component Diagram](assets/chapter-04/ProfilesBCComponentDiagram-dark.png)

#### Dashboard Component Diagram

![Dashboard Component Diagram](assets/chapter-04/DashboardBCComponentDiagram-dark.png)

#### Analytics Component Diagram

![Analytics Component Diagram](assets/chapter-04/AnalyticsBCComponentDiagram-dark.png)

#### Inventory Component Diagram

![Inventory Component Diagram](assets/chapter-04/InventoryBCComponentDiagram-dark.png)

#### Products Component Diagram

![Products Component Diagram](assets/chapter-04/ProductsBCComponentDiagram-dark.png)

#### Requisition Component Diagram

![Requisition Component Diagram](assets/chapter-04/RequisitionBCComponentDiagram-dark.png)

#### Procurements Component Diagram

![Procurements Component Diagram](assets/chapter-04/ProcurementsBCComponentDiagram-dark.png)

#### Suppliers Component Diagram

![Suppliers Component Diagram](assets/chapter-04/SuppliersBCComponentDiagram-dark.png)

#### Conservation Component Diagram

![Conservation Component Diagram](assets/chapter-04/ConservationBCComponentDiagram-dark.png)

#### Communication Component Diagram

![Communication Component Diagram](assets/chapter-04/CommunicationBCComponentDiagram-dark.png)

#### Shared Kernel Component Diagram

![Shared Kernel Component Diagram](assets/chapter-04/SharedKernelComponentDiagram-dark.png)

De esta forma, los component diagrams complementan la visión general de la arquitectura, mostrando cómo OrganiK organiza sus responsabilidades internas en componentes coherentes con el dominio y cómo estos colaboran para implementar la gestión de productos orgánicos, inventario, conservación, abastecimiento, proveedores, comunicación y analítica.

<div style="page-break-after: always;"></div>

## 4.7. Software Object-Oriented Design.

En esta sección se presenta el diseño orientado a objetos de OrganiK, representando la estructura de clases principales del sistema y su organización por bounded contexts. Estos diagramas permiten visualizar las responsabilidades de cada clase, sus atributos, métodos y relaciones dentro de la arquitectura de la aplicación.

### 4.7.1. Class Diagrams.

Los diagramas de clases muestran la organización interna de los componentes principales de OrganiK, siguiendo una estructura alineada con los bounded contexts definidos previamente. Cada diagrama representa las clases más relevantes dentro de un módulo específico, permitiendo comprender cómo se modelan los conceptos del dominio y cómo se relacionan con la lógica de aplicación.

A continuación, se presenta el diagrama general de clases del sistema:

![General Class Diagram](assets/chapter-04/diagram-class-general.png)

Además, se presentan los diagramas de clases correspondientes a los principales bounded contexts de OrganiK:

#### Profiles Class Diagram

![Profiles Class Diagram](assets/chapter-04/profilesclass.png)

#### Communication Class Diagram

![Communication Class Diagram](assets/chapter-04/communicationclass.png)

#### Conservation Class Diagram

![Conservation Class Diagram](assets/chapter-04/conservationclass.png)

#### Analytics Class Diagram

![Analytics Class Diagram](assets/chapter-04/analitycsclass.png)

#### Dashboard Class Diagram

![Dashboard Class Diagram](assets/chapter-04/dashboardclass.png)

#### IAM Class Diagram

![IAM Class Diagram](assets/chapter-04/iamclass.png)

#### Shared Class Diagram

![Shared Class Diagram](assets/chapter-04/sharedclass.png)

Estos diagramas permiten complementar la arquitectura de software, mostrando una vista más detallada del diseño orientado a objetos de OrganiK. A través de ellos se puede identificar cómo se distribuyen las responsabilidades entre entidades, servicios, componentes de presentación, stores de aplicación e infraestructura.

---

## 4.8. Database Design.

El diseño de base de datos propuesto considera usuarios, perfiles, productos, inventario, proveedores, necesidades de reposición, pedidos y decisiones, conservación, comunicación, analítica y auditoría.

La base de datos se encuentra organizada de acuerdo con los bounded contexts definidos en la arquitectura del sistema, permitiendo mantener una separación lógica entre las distintas áreas funcionales. Esta organización facilita la trazabilidad de la información, la consistencia de los datos y la evolución del sistema conforme se incorporen nuevas funcionalidades.

### 4.8.1. Database Diagrams.

El diagrama de base de datos muestra las entidades principales de OrganiK, sus atributos, claves primarias, claves foráneas y relaciones. Esta vista permite comprender cómo se almacena la información del sistema y cómo se conectan los distintos procesos de negocio a nivel de persistencia.

![Database Diagram](assets/chapter-04/databasedigram.png)


