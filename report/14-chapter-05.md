# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management.

En esta sección se describen las decisiones, convenciones y principios adoptados por el equipo de **OrganiK** para garantizar la coherencia, trazabilidad y control de versiones durante el ciclo de vida del desarrollo de la solución **OrganiK**. Se establecen los lineamientos para la configuración del entorno de desarrollo, la gestión del código fuente, las convenciones de estilo y la configuración de despliegue de la landing page.

### 5.1.1. Software Development Environment Configuration.

Se especifican los productos de software utilizados durante el ciclo de vida del proyecto, organizados por disciplinas técnicas para asegurar la estandarización del entorno entre los desarrolladores de **OrganiK**.

#### Project Management

* **Trello:** Empleado para la organización visual del flujo de trabajo diario, priorización de tareas y seguimiento del avance de las secciones de la landing page.
  * **Ruta:** `https://trello.com/invite/b/6aaf94c8244f819349bf0de9/ATTI96869889ee148c22847a13480770254571767922/sprint-backlog-1-organik`

* **UXPressia:** Utilizado para la construcción de los artefactos de UX, como los User Personas, Journey Maps e Impact Maps.
  * Ruta: `https://uxpressia.com`

#### Product UX/UI Design

* **Miro:** Pizarra colaborativa utilizada para organizar ideas, flujos de usuario y estructura general.
  * Ruta: `https://miro.com`
* **Figma:** Herramienta principal para el diseño visual, definición de jerarquía de contenido, componentes UI y wireframes.
  * Ruta: `https://www.figma.com`
* **Structurizr:** Utilizado para apoyar el modelado de arquitectura mediante diagramas de alto nivel C4 Model.
  * Ruta: `https://structurizr.com`

#### Software Development

#### Software Development
* **GitHub:** Hosting del repositorio de código fuente y control de versiones.
  * Ruta: `https://github.com`
* **WebStorm:** IDE utilizado para el desarrollo de la aplicación.
  * Ruta: `https://www.jetbrains.com/webstorm/`
* **Angular 22:** Framework utilizado para construir las interfaces web de OrganiK.
  * Ruta: `https://angular.dev`
* **TypeScript:** Lenguaje principal para la implementación de componentes y lógica.
  * Ruta: `https://www.typescriptlang.org`
* **Angular Material:** Librería de componentes de interfaz web.
  * Ruta: `https://material.angular.io`
* **@ngx-translate:** Librería utilizada para la internacionalización en español e inglés.
  * Ruta: `https://github.com/ngx-translate/core`
* **HTML/CSS:** Tecnologías utilizadas para la maquetación, estructura visual y estilos responsivos.
  * Ruta: `https://developer.mozilla.org/en-US/docs/Web/HTML` and `https://developer.mozilla.org/en-US/docs/Web/CSS`

#### Software Testing
* **Vitest / Angular Test Runner:** Utilizado para validar el renderizado de secciones principales y pruebas unitarias básicas.
  * Ruta: `https://vitest.dev`

#### Database Design
* **MySQL Workbench:** Herramienta visual empleada para el modelado, diseño de diagramas y administración de la base de datos relacional.
  * Ruta: `https://www.mysql.com/products/workbench/`

#### Software Deployment
* **Firebase Hosting:** Plataforma en la nube de Google utilizada para el despliegue rápido y seguro tanto de la Landing Page estática como de la Frontend Web Application.
  * Ruta: `https://firebase.google.com`
* **Google Cloud / Firebase:** Infraestructura utilizada para el despliegue de los Backend Web Services.
  * Ruta: `https://cloud.google.com`

#### Software Documentation
* **Markdown:** Utilizado para documentar el proyecto, la configuración y decisiones técnicas.
  * Ruta: `https://www.markdownguide.org`

---

### 5.1.2. Source Code Management.

Se establecen los repositorios oficiales de la solución **OrganiK** para garantizar la integridad del código fuente.

#### Repositorios del Proyecto

<table>
  <thead>
    <tr>
      <th>Producto</th>
      <th>URL del Repositorio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Project Report OrganiK</td>
      <td><a href="https://github.com/5Bits-OrganiK/project-report.git">https://github.com/5Bits-OrganiK/project-report.git</a></td>
    </tr>
    <tr>
      <td>Landing Page OrganiK</td>
      <td><a href="https://github.com/5Bits-OrganiK/organik-landing-page-static.git">https://github.com/5Bits-OrganiK/organik-landing-page-static.git</a></td>
    </tr>
    <tr>
      <td>Frontend Web Application OrganiK</td>
      <td><a href="https://github.com/5Bits-OrganiK/organik-web-application.git">https://github.com/5Bits-OrganiK/organik-web-application.git</a></td>
    </tr>
    <tr>
      <td>Backend Web Services OrganiK</td>
      <td><a href="https://github.com/5Bits-OrganiK/organik-backend.git">https://github.com/5Bits-OrganiK/organik-backend.git</a></td>
    </tr>
  </tbody>
</table>

#### GitFlow Workflow and Collaboration Strategy

Para asegurar una colaboración organizada, evitar conflictos en el código y mantener una integración continua clara, el equipo de **OrganiK** aplica una estrategia basada en ramas para el desarrollo de la landing page.

La estrategia de colaboración se define de la siguiente manera:

- **main:** Rama que contiene la versión estable y lista para producción de la landing page. Solo recibe integraciones finales cuando los cambios han sido revisados, probados y aprobados.

- **develop:** Rama principal de integración. En esta rama se unifican las funcionalidades terminadas antes de ser promovidas a `main`.

- **feature/<section>:** Ramas temporales creadas a partir de `develop` para aislar el desarrollo de cada sección o mejora de la landing page.

  Ejemplos:
  - `feature/home-section`
  - `feature/product-information-section`
  - `feature/video-section`
  - `feature/pricing-section`
  - `feature/starter-section`

- **hotfix/<issue>:** Ramas creadas desde `main` para corregir errores críticos detectados en la versión estable de la landing page.

El flujo de trabajo establece que cada rama `feature` debe integrarse mediante **Pull Request (PR)**, permitiendo revisión de código antes de aprobar la integración.

Cada commit debe seguir la convención de **Conventional Commits**, permitiendo una trazabilidad clara de los cambios realizados en el proyecto.

Ejemplos:

- `feat(landing): build organik landing page`
- `fix(app): enable zoneless change detection`
- `fix(videos): update team embed url`
- `fix(videos): show youtube previews`
- `fix(brand): align assets with organik name`
- `refactor(app): move landing features to app root`

---

### 5.1.3. Source Code Style Guide & Conventions.

En esta sección se establecen las convenciones de estilo y nomenclatura adoptadas para los lenguajes utilizados en el proyecto **OrganiK**: HTML, CSS, TypeScript y Angular. Se aplica nomenclatura en inglés para los elementos del código, manteniendo coherencia con el dominio de la landing page y la plataforma.

#### Referencias de Guías de Estilo Adoptadas

| Lenguaje/Tecnología | Guía de Estilo |
| :--- | :--- |
| HTML/CSS | [Google HTML/CSS Style Guide](https://google.github.io/styleguide/htmlcssguide.html) |
| TypeScript | [Google TypeScript Style Guide](https://google.github.io/styleguide/tsguide.html) |
| Angular | [Angular Style Guide](https://angular.dev/style-guide) |
| Spring Boot | [Spring Boot Features](https://spring.io/projects/spring-boot) |
| Java | [Google Java Style Guide](https://google.github.io/styleguide/javaguide.html) |
| Conventional Commits | [Conventional Commits](https://www.conventionalcommits.org/) |

Se utiliza nomenclatura en inglés relacionada con las entidades del dominio de la landing page y la plataforma **OrganiK**, manteniendo nombres claros, consistentes y alineados al producto.

| Elemento | Convención | Ejemplo |
| :--- | :--- | :--- |
| Componentes Angular | PascalCase | `HomeSection`, `PricingSection` |
| Archivos de componentes | kebab-case | `home-section.ts`, `pricing-section.ts` |
| Archivos de estilos CSS | kebab-case | `home-section.css`, `pricing-section.css` |
| Variables / Métodos TS | camelCase | `currentLang`, `useLanguage()` |
| Constantes | SCREAMING_SNAKE_CASE | `DEFAULT_LOCALE`, `STARTER_EMAIL` |
| Rutas / IDs de secciones | kebab-case | `product-information`, `starter` |
| Claves de i18n | camelCase / dot.case | `home.title`, `pricing.plans.basic.name` |
| Ramas Git feature | kebab-case | `feature/home-section`, `feature/starter-section` |
| Commits | Conventional Commits | `feat(landing): build organik landing page` |

#### Sangría y Formato

* Se aplica una indentación de dos espacios para archivos web: HTML, CSS y TypeScript.
* Las llaves de apertura en TS/JS se colocan en la misma línea, siguiendo el estilo K&R.
* Los nombres de carpetas y archivos se mantienen en `kebab-case`.
* La estructura de features se organiza directamente dentro de `src/app`.

---

### 5.1.4. Software Deployment Configuration.

Se especifican los pasos y recursos de configuración de despliegue para asegurar que la plataforma **OrganiK** sea completamente accesible en sus diferentes productos.

#### Landing Page (Firebase Hosting)
1. **Preparación:** Clonación del repositorio `organik-landingpage` y configuración local.
2. **Construcción:** Ejecución del comando de compilación de Angular (`ng build`) para generar los archivos estáticos optimizados.
3. **Despliegue:** Uso del CLI de Firebase (`firebase deploy --only hosting`) para cargar el código compilado en la nube.
* **URL de producción:** https://organik-d6e58.web.app/

#### Frontend Web Application (Firebase Hosting)
1. **Preparación:** Integración de los últimos cambios de Angular en la rama `main` del repositorio `organik-frontend`.
2. **Construcción:** Configuración del archivo de entorno (variables de entorno) para apuntar al backend público, y compilación del proyecto para producción (`ng build --configuration production`).
3. **Despliegue:** Uso del CLI de Firebase (`firebase deploy --only hosting`) para cargar la plataforma interactiva en la nube.
* **URL de producción:** https://organik-app-d6e58.web.app/

---

## 5.2. Landing Page, Services & Applications Implementation.

### 5.2.1. Sprint 1

---

#### 5.2.1.1. Sprint Planning 1.

| **Sprint Planning Sprint 1** |  |
|---|---|
| **Sprint Planning Background** |  |
| Date | 05/04/2026 |
| Time | 10:00 p.m. |
| Location | Discord / WhatsApp |
| Prepared By | Albino Florencio Cáceres Pizarro |
| Attendees | Albino Florencio Cáceres Pizarro<br>Cielo Valentina Atencio Cristobal<br>Gustavo Alonso Olivares Lao<br>Andre Sebastian Quispe Almonacid<br>Alexis Calin Torres Huaman |
| **Sprint Goal & User Stories** |  |
| **Sprint 1 Goal** | Entregar la landing page de **OrganiK** para comunicar a administradores de minimarkets y proveedores la propuesta de inventario, lotes, conservación y abastecimiento. El objetivo de US00 es que un visitante sin sesión pueda recorrer Home, Product Description, Videos, Plans y Starter y encontrar un medio de contacto. |
| User Story comprometida | US00: Conocer OrganiK en la landing page (5 Story Points, según Product Backlog del capítulo III). |
| Capacidad de planificación consignada | 14 Story Points. |

<p>
  <strong>Repositorio:</strong>
  <a href="https://github.com/5Bits-OrganiK/organik-landingpage.git">
   https://github.com/5Bits-OrganiK/organik-landingpage.git
  </a>
</p>
---

#### 5.2.1.2. Aspect Leaders and Collaborators.

<p>
Esta matriz <strong>LACX</strong> identifica los aspectos principales del sprint y asigna responsabilidades de Líder (L) y Colaborador (C) para organizar al equipo durante el desarrollo de la landing page de <strong>OrganiK</strong>. 
<strong>Albino Florencio Cáceres Pizarro</strong>, como líder del equipo, supervisa y coordina los principales aspectos del desarrollo, mientras que los demás integrantes participan como colaboradores en las diferentes actividades del sprint.
</p>

<table border="1" cellpadding="4" cellspacing="0" align="center">
  <thead>
    <tr>
      <th>Team Member</th>
      <th>Student Code</th>
      <th>Aspect: UI/UX & Visual Design</th>
      <th>Aspect: Angular Structure & Components</th>
      <th>Aspect: Content & i18n</th>
      <th>Aspect: GitFlow & Deployment</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atencio Cristobal, Cielo Valentina</td>
      <td>U202424216</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Cáceres Pizarro, Albino Florencio</td>
      <td>U201923820</td>
      <td>L</td>
      <td>L</td>
      <td>L</td>
      <td>L</td>
    </tr>
    <tr>
      <td>Olivares Lao, Gustavo Alonso</td>
      <td>U202216448</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Quispe Almonacid, Andre Sebastian</td>
      <td>U201815005</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
    </tr>
    <tr>
      <td>Torres Huaman, Alexis Calin</td>
      <td>U20241G152</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
      <td>C</td>
    </tr>
  </tbody>
</table>

---

#### 5.2.1.3. Sprint Backlog 1.

El Sprint Backlog agrupa las tareas iniciales correspondientes al diseño, desarrollo y documentación de la landing page de **OrganiK**, producto orientado a la gestión de inventario, lotes, conservación y abastecimiento de productos orgánicos para minimarkets.

Las tareas T001-T007 descomponen la historia **US00** descrita en el Product Backlog del capítulo III.

<div align="center">
  <img src="./assets/chapter-05/sprin1.png" alt="Sprint 1 Board Screenshot" width="100%">
  <p><em>Figura: Tablero del Sprint 1 en Trello, herramienta de gestión del proyecto OrganiK.</em></p>
</div>

| User Story Id | Componente de US00 | Task Id | Engineering Task | Description | Estimation (Hours) | Assigned To | Status |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **US00** | Landing Page Base | T001 | Implementación de Home Section | Desarrollo de la sección principal de la landing page en Angular, presentando la propuesta de valor de OrganiK para minimarkets orgánicos. | 4h | Cáceres Pizarro, Albino Florencio | Done |
| **US00** | Product Information | T002 | Maquetación de descripción del producto | Implementación de la sección informativa sobre inventario, lotes, alertas de conservación, pedidos y accesos por rol. | 4h | Atencio Cristobal, Cielo Valentina | Done |
| **US00** | Videos Section | T003 | Implementación de sección de videos | Desarrollo del apartado visual para presentar al equipo y mostrar el funcionamiento general de OrganiK mediante videos embebidos. | 3h | Olivares Lao, Gustavo Alonso | Done |
| **US00** | Pricing Section | T004 | Implementación de planes | Maquetación de los planes Básico, Profesional y Empresarial, incluyendo precios, beneficios y llamadas a la acción. | 3h | Quispe Almonacid, Andre Sebastian | Done |
| **US00** | Starter Section | T005 | Implementación de sección de suscripción | Desarrollo de la sección Starter/Suscribirse con formulario para que los minimarkets interesados puedan iniciar el proceso de adopción de OrganiK. | 4h | Torres Huaman, Alexis Calin | Done |
| **US00** | Landing Page Architecture | T006 | Organización por features y estructura Angular | Refactorización de carpetas siguiendo una arquitectura organizada por features dentro de `src/app`, separando componentes, estilos, assets e internacionalización. | 5h | Cáceres Pizarro, Albino Florencio | Done |
| **US00** | GitFlow Setup | T007 | Configuración de commits y control de versiones | Organización incremental del trabajo mediante Git y commits aplicando Conventional Commits. | 3h | Cáceres Pizarro, Albino Florencio | Done |

| Criterio de aceptación de US00 (capítulo III) | Tareas relacionadas | Evidencia consignada en 5.2.1.5 |
|---|---|---|
| Presentar la propuesta para administradores y proveedores | T001, T002 | Capturas Home y Product Information |
| Permitir navegar secciones públicas sin sesión | T001, T003, T004, T005 | Capturas de Home, Videos, Plans y Starter |
| Ofrecer un medio de contacto | T005 | Captura de Starter |
| Mantener una entrega técnica reproducible | T006, T007 | Repositorio y registros de desarrollo en 5.2.1.4 |

---

#### 5.2.1.4. Development Evidence for Sprint Review.

<p>
  Durante el Sprint 1 se implementó y desplegó la primera versión de la Landing Page de <strong>OrganiK</strong>. A continuación se resumen los commits más relevantes del repositorio de la Landing Page, siguiendo Conventional Commits y GitFlow; el detalle completo está en el historial del repositorio.
</p>

<table border="1" cellpadding="4" cellspacing="0">
  <thead>
    <tr>
      <th>Repository</th>
      <th>Branch</th>
      <th>Commit Id</th>
      <th>Commit Message</th>
      <th>Commit Message Body</th>
      <th>Committed on</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>main</td>
      <td><code>e23d611</code></td>
      <td>chore: initial commit</td>
      <td>Inicializa el repositorio de la Landing Page.</td>
      <td>07-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/landing-page-html</td>
      <td><code>3ac25f6</code></td>
      <td>feat(landing-page): created the principal HTML of the landing page</td>
      <td>Estructura HTML principal de la Landing Page.</td>
      <td>07-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/i18n-configuration</td>
      <td><code>a326659</code></td>
      <td>feat(i18n): create i18n for english and spanish translation for the landing page</td>
      <td>Traducciones al inglés y español de la Landing Page.</td>
      <td>07-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/team-profiles-images-and-icons</td>
      <td><code>76240a9</code></td>
      <td>feat(images-and-logo): insert the team profiles images for the landing page and logo of organik</td>
      <td>Fotos de perfil del equipo y logo de OrganiK.</td>
      <td>07-10-2026</td>
    </tr>
  </tbody>
</table>

---

### 5.2.1.5. Execution Evidence for Sprint Review.

Durante el Sprint 1, el equipo logró implementar con éxito el diseño, maquetación y despliegue de la nueva versión de la Landing Page de **OrganiK**. A continuación, se presentan las evidencias visuales de la ejecución del producto de software, demostrando el cumplimiento de los Criterios de Aceptación de las Historias de Usuario planificadas y la correcta adaptación de la plataforma al idioma inglés.

#### Evidencia 1: Home Section y Propuesta de Valor
Se desarrolló la pantalla de inicio principal destacando la propuesta de valor de OrganiK: controlar el inventario antes de que sea tarde. El diseño presenta una interfaz oscura con un dashboard visual interactivo y componentes que ilustran el estado del stock en tiempo real.

![Vista principal de OrganiK desplegada en la Landing Page.](./assets/chapter-05/execution-landing-home.jpg)
*Figura: Vista principal de OrganiK desplegada en la Landing Page.*

#### Evidencia 2: Características del Producto (Features)
Se maquetó la sección informativa donde se presentan las principales capacidades de OrganiK mediante tarjetas UI, incluyendo inventario centralizado, control de lotes por código, alertas inteligentes y fechas de caducidad.

![Sección de características y funcionalidades principales.](./assets/chapter-05/execution-landing-features.jpg)
*Figura: Sección de características y funcionalidades principales.*

#### Evidencia 3: Módulo para Proveedores (Suppliers)
Se implementó una sección dedicada exclusivamente a los proveedores ("Reach more minimarkets"), comunicando cómo la plataforma les permite publicar su catálogo orgánico, recibir necesidades de reabastecimiento de los minimarkets y gestionar pedidos en un solo lugar.

![Sección dedicada a los proveedores de minimarkets.](./assets/chapter-05/execution-landing-suppliers.jpg)
*Figura: Sección dedicada a los proveedores de minimarkets.*

#### Evidencia 4: Demostración del Producto (Product Video)
Se integró un apartado audiovisual ("See OrganiK in action") diseñado para incrustar material de video demostrativo. Esta sección permite explicar visualmente cómo la solución centraliza los procesos operativos del minimarket.

![Sección de video demostrativo del producto.](./assets/chapter-05/execution-landing-demo-video.jpg)
*Figura: Sección de video demostrativo del producto.*

#### Evidencia 5: Testimonios de Usuarios (Testimonials)
Se desarrolló una sección de validación social ("What minimarkets are saying") que muestra comentarios de clientes y proveedores ficticios, destacando métricas de éxito como la reducción de desperdicios y el ahorro de tiempo semanal.

![Sección de testimonios de usuarios de OrganiK.](./assets/chapter-05/execution-landing-testimonials.jpg)
*Figura: Sección de testimonios de usuarios de OrganiK.*

#### Evidencia 6: Planes Comerciales (Pricing)
Se diseñó la vista de planes de suscripción ("A plan for every minimarket size"), presentando las alternativas Basic, Professional y Enterprise. La interfaz permite cambiar entre planes para minimarkets y proveedores mediante un selector interactivo.

![Sección de planes de suscripción disponibles.](./assets/chapter-05/execution-landing-pricing.jpg)
*Figura: Sección de planes de suscripción disponibles.*

#### Evidencia 7: Presentación del Equipo (The Team)
Se desarrolló una sección detallada ("The people behind OrganiK") para presentar a los cinco miembros del equipo responsable del desarrollo. Cada tarjeta incluye la fotografía, nombre, código de estudiante y una cita sobre su enfoque en la construcción del producto.

![Perfiles de los miembros del equipo de OrganiK.](./assets/chapter-05/execution-landing-team.jpg)
*Figura: Perfiles de los miembros del equipo de OrganiK.*

#### Evidencia 8: Llamado a la Acción y Suscripción (Starter)
Se construyó la sección de cierre orientada a la conversión ("Take control of your minimarket with OrganiK"). Incluye un botón de inicio de sesión directo, un gráfico de radar temático y el pie de página con enlaces a políticas de privacidad.

![Sección final de llamado a la acción y pie de página.](./assets/chapter-05/execution-landing-starter.jpg)
*Figura: Sección final de llamado a la acción y pie de página.*

---

### 5.2.1.6. Services Documentation Evidence for Sprint Review.

Dado que el alcance del Sprint 1 se centró exclusivamente en el diseño, maquetación y despliegue de la Landing Page estática, la implementación y documentación de los servicios Backend (API RESTful) se abordarán a partir del Sprint 2. Por lo tanto, la evidencia de documentación de servicios (Swagger/OpenAPI) se incluirá en las siguientes iteraciones.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review.

Durante el Sprint 1 se configuró Firebase Hosting como proveedor cloud para desplegar la primera versión de la Landing Page de **OrganiK**. El proyecto se compila y se publica con el CLI de Firebase (`firebase deploy --only hosting`), tal como se describe en la sección 5.1.4. La Web Application y los Web Services se despliegan a partir del Sprint 2 y Sprint 3, respectivamente.

* **Repositorio:** https://github.com/5Bits-OrganiK/organik-landing-page-static
* **Entorno local:** http://localhost:4200/
* **URL de Producción:** https://organik-d6e58.web.app/

![Evidencia de despliegue en producción en Firebase.](./assets/chapter-05/execution-deployment-firebase.png)
*Figura: Landing Page de OrganiK desplegada exitosamente en Firebase Hosting.*

---

#### 5.2.1.8. Team Collaboration Insights during Sprint.

<p>
  Durante este primer sprint, el esfuerzo principal del equipo de <strong>OrganiK</strong> se centró en la estructuración del proyecto, el diseño UX/UI, la implementación de la landing page, la organización de commits mediante Conventional Commits y la documentación inicial del producto <strong>OrganiK</strong>. Por lo tanto, las evidencias de colaboración presentadas a continuación corresponden al trabajo realizado para construir la presencia digital inicial del producto.
</p>

<p>
  En primer lugar, el <strong>Historial de Commits</strong> del repositorio demuestra que el trabajo fue organizado mediante cambios incrementales y commits siguiendo la convención de <strong>Conventional Commits</strong>. Durante el sprint se realizaron cambios relacionados con la maquetación de secciones, la adaptación visual basada en referencias, la internacionalización de contenido, la corrección de videos embebidos, la alineación de marca y la refactorización de la arquitectura por features.
</p>

<div align="center">
  <img src="assets/chapter-05/commit-history-sprint1.png" alt="Commit History Evidence" width="90%">
  <p><em>Figura: Historial de commits demostrando el avance incremental de la landing page de OrganiK.</em></p>
</div>

<p>
  En segundo lugar, el gráfico de <strong>Visitors (Traffic)</strong> proporcionado por los Insights de GitHub permite evidenciar la actividad de consulta del repositorio. Las visitas y usuarios únicos reflejan que el equipo revisó recurrentemente el avance del proyecto, validando la estructura visual, el contenido de las secciones y la coherencia general de la landing page antes del despliegue.
</p>

<div align="center">
  <img src="assets/chapter-05/visitors-sprint1.png" alt="Traffic Visitors Graph" width="90%">
  <p><em>Figura: Gráfica de visitantes mostrando la revisión constante del repositorio por parte del equipo OrganiK.</em></p>
</div>

---

### 5.2.2. Sprint 2

---

#### 5.2.2.1. Sprint Planning 2.

| **Sprint Planning Sprint 2** |  |
|---|---|
| **Sprint Planning Background** |  |
| Date | 25/09/2026 |
| Time | Por confirmar |
| Location | Discord |
| Prepared By | Olivares Lao, Gustavo Alonso |
| Attendees | Albino Florencio Cáceres Pizarro<br>Cielo Valentina Atencio Cristobal<br>Gustavo Alonso Olivares Lao<br>Andre Sebastian Quispe Almonacid<br>Alexis Calin Torres Huaman |
| **Sprint Goal & User Stories** |  |
| **Sprint 2 Goal** | **Nuestro enfoque** es entregar la primera versión navegable de la Web Application de **OrganiK**, organizada por bounded contexts (Dashboard, Inventory, Products, Suppliers, Analytics, Communication, Conservation y Shared Kernel, con datos simulados), y una nueva versión de la Landing Page con selector de idioma, páginas legales y página 404. **Creemos que esto entrega** a administradores de minimarket y proveedores una primera forma concreta de ver su inventario, catálogo, proveedores, alertas y conservación, y a los visitantes información legal clara y navegación bilingüe. **Esto se confirmará cuando** la Landing Page y la Web Application estén desplegadas en Firebase Hosting con soporte en español e inglés, y los módulos por bounded context estén integrados en la rama `develop` del repositorio. |
| Historias de usuario comprometidas | US-037, US-039 (Landing Page); US-040, US-001, US-002, US-006, US-007, US-013, US-014, US-015, US-016, US-009, US-010, US-011, US-012, US-030 (Web Application). |
| Story Points comprometidos | 61 Story Points, según el Product Backlog del capítulo III. |

<p>
  <strong>Repositorios:</strong><br>
  <a href="https://github.com/5Bits-OrganiK/organik-landing-page-static.git">https://github.com/5Bits-OrganiK/organik-landing-page-static.git</a><br>
  <a href="https://github.com/5Bits-OrganiK/organik-web-application.git">https://github.com/5Bits-OrganiK/organik-web-application.git</a>
</p>

---

#### 5.2.2.2. Aspect Leaders and Collaborators.

<p>
Esta matriz <strong>LACX</strong> identifica los aspectos del Sprint 2 y asigna Líder (L) y Colaborador (C) según el trabajo registrado en los repositorios. Los aspectos corresponden a los bounded contexts de la Web Application y a las mejoras de la Landing Page. Un guion (—) indica que el integrante no participó en ese aspecto durante el sprint.
</p>

<table border="1" cellpadding="4" cellspacing="0" align="center">
  <thead>
    <tr>
      <th>Team Member</th>
      <th>Student Code</th>
      <th>GitHub Username</th>
      <th>Aspect: Landing Page v2</th>
      <th>Aspect: Project Setup &amp; i18n</th>
      <th>Aspect: Shared Kernel</th>
      <th>Aspect: Dashboard &amp; Inventory</th>
      <th>Aspect: Products &amp; Suppliers</th>
      <th>Aspect: Analytics &amp; Communication</th>
      <th>Aspect: Conservation</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Atencio Cristobal, Cielo Valentina</td><td>U202424216</td><td>Ciel0p</td><td>C</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>L</td></tr>
    <tr><td>Cáceres Pizarro, Albino Florencio</td><td>U201923820</td><td>Lil Doggy / a.caceres</td><td>—</td><td>—</td><td>L</td><td>—</td><td>—</td><td>L</td><td>—</td></tr>
    <tr><td>Olivares Lao, Gustavo Alonso</td><td>U202216448</td><td>GeGuMaGu25</td><td>—</td><td>L</td><td>—</td><td>L</td><td>—</td><td>—</td><td>—</td></tr>
    <tr><td>Quispe Almonacid, Andre Sebastian</td><td>U201815005</td><td>u201815005</td><td>C</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td></tr>
    <tr><td>Torres Huaman, Alexis Calin</td><td>U20241G152</td><td>Alex_Torres</td><td>L</td><td>—</td><td>—</td><td>—</td><td>L</td><td>—</td><td>—</td></tr>
  </tbody>
</table>

---

#### 5.2.2.3. Sprint Backlog 2.

El Sprint Backlog 2 agrupa las tareas de la primera versión de la Web Application y de la nueva versión de la Landing Page de **OrganiK**. Las tareas se derivan de las historias de usuario del Product Backlog del capítulo III. La Web Application se implementa en el frontend con una API simulada (`fake-api`), a la espera de los Web Services. Las tareas sin historia asociada corresponden a trabajo técnico transversal.

El seguimiento se realiza en el mismo tablero de Trello del proyecto: [Tablero de Trello de OrganiK](https://trello.com/invite/b/6aaf94c8244f819349bf0de9/ATTI96869889ee148c22847a13480770254571767922/sprint-backlog-1-organik).

| User Story Id | User Story Title | Task Id | Engineering Task | Description | Estimation (Hours) | Assigned To | Status |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **US-037** | Cambiar idioma del Landing Page | T008 | Script principal de la landing | Navegación, cambio de idioma ES/EN y animaciones en `main.js`. | 4h | Torres Huaman, Alexis Calin | Done |
| **US-039** | Consultar términos y condiciones | T009 | Páginas legales | Páginas de términos y condiciones y de política de privacidad enlazadas en el footer. | 3h | Atencio Cristobal, Cielo Valentina | Done |
| — | Tarea técnica | T010 | Página 404 de la landing | Página de error personalizada `404.html`. | 2h | Torres Huaman, Alexis Calin | Done |
| — | Tarea técnica | T011 | Estilos globales y configuración | `.editorconfig`, Prettier y hoja de estilos global de la landing. | 3h | Quispe Almonacid, Andre Sebastian | To-Review |
| — | Tarea técnica | T012 | Configuración inicial de la Web Application | Proyecto Angular, archivos de entorno de desarrollo y producción. | 4h | Olivares Lao, Gustavo Alonso | Done |
| **US-040** | Cambiar idioma de la aplicación | T013 | Internacionalización ES/EN | Archivos i18n en español e inglés para la Web Application. | 3h | Olivares Lao, Gustavo Alonso | Done |
| — | Tarea técnica | T014 | Shared Kernel | Modelos de dominio compartidos (Money, Quantity, DateTime, etc.), stores, API simulada, layout, sidebar y componentes compartidos. | 8h | Cáceres Pizarro, Albino Florencio | Done |
| **US-030** | Consultar dashboard por segmento | T015 | Bounded context Dashboard | Capas de aplicación y presentación del dashboard. | 5h | Olivares Lao, Gustavo Alonso | Done |
| **US-002, US-006, US-007, US-013, US-014** | Visualizar inventario; registrar y consultar lotes; registrar merma y oferta | T016 | Bounded context Inventory | Capas de dominio, aplicación, infraestructura y presentación: listado, lotes, stock, mermas y ofertas. | 8h | Olivares Lao, Gustavo Alonso | Done |
| **US-001** | Registrar producto en inventario | T017 | Bounded context Products | Capas de dominio, aplicación, infraestructura y presentación: lista, formulario y categorías de productos. | 6h | Torres Huaman, Alexis Calin | Done |
| **US-015, US-016** | Consultar y registrar productos de proveedores | T018 | Bounded context Suppliers | Capas de dominio, aplicación, infraestructura y presentación: proveedores, catálogo y ofertas. | 6h | Torres Huaman, Alexis Calin | Done |
| — | Tarea técnica | T019 | Bounded context Analytics | Capas de dominio, aplicación, infraestructura y presentación: resumen de analítica y formulario de reportes. | 5h | Cáceres Pizarro, Albino Florencio | Done |
| **US-009** | Generar alertas de vencimiento | T020 | Bounded context Communication | Capas de aplicación y presentación: vista general de alertas. | 4h | Cáceres Pizarro, Albino Florencio | Done |
| **US-010, US-011, US-012** | Consultar condiciones, monitorear temperatura y humedad, alertas de conservación | T021 | Bounded context Conservation | Capas de dominio, aplicación, infraestructura y presentación: monitoreo y alertas de conservación. | 8h | Atencio Cristobal, Cielo Valentina | To-Review |

Las estimaciones en horas son de planificación. Las tareas en estado *To-Review* están implementadas en ramas `feature` que aún no se integran en `develop`.

---

#### 5.2.2.4. Development Evidence for Sprint Review.

<p>
  Durante el Sprint 2 se implementó la primera versión de la Web Application en Angular, organizada por bounded contexts (Dashboard, Inventory, Products, Suppliers, Analytics, Communication, Conservation y Shared Kernel) y por capas (domain, application, infrastructure, presentation), y se amplió la Landing Page con el script principal, páginas legales, página 404 y estilos globales. A continuación se resumen los commits más relevantes de cada repositorio, siguiendo Conventional Commits y GitFlow; el detalle completo está en el historial de cada repositorio.
</p>

<table border="1" cellpadding="4" cellspacing="0">
  <thead>
    <tr>
      <th>Repository</th>
      <th>Branch</th>
      <th>Commit Id</th>
      <th>Commit Message</th>
      <th>Commit Message Body</th>
      <th>Committed on</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/main-script</td>
      <td><code>8d8c10b</code></td>
      <td>feat(landing): add main script for navigation, i18n and animations</td>
      <td>Script principal de navegación, i18n y animaciones.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/not-found-page</td>
      <td><code>e5ac524</code></td>
      <td>feat(landing): add custom 404 not found page</td>
      <td>Página 404 personalizada.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/legal-pages</td>
      <td><code>bbadccf</code></td>
      <td>feat(landing): add privacy policy page</td>
      <td>Página de política de privacidad enlazada en el footer.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/legal-pages</td>
      <td><code>0483e07</code></td>
      <td>feat(landing): add terms and conditions page</td>
      <td>Página de términos y condiciones enlazada en el footer.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-landing-page-static</td>
      <td>feature/global-styles</td>
      <td><code>77f021a</code></td>
      <td>chore(config): setup editorconfig, prettier and global styles</td>
      <td>Configuración de .editorconfig, Prettier y estilos globales.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>main</td>
      <td><code>fc25963</code></td>
      <td>initial commit</td>
      <td>Inicializa el repositorio de la Web Application.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/project-configuration</td>
      <td><code>368d664</code></td>
      <td>feat(project-config): initial project configuration</td>
      <td>Configuración inicial del proyecto Angular.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/project-configuration</td>
      <td><code>2523fec</code></td>
      <td>feat(project-config): add environment files for development and production</td>
      <td>Archivos de entorno para desarrollo y producción.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/i18n</td>
      <td><code>ededd82</code></td>
      <td>feat(i18n): add i18n files for english and spanish language</td>
      <td>Archivos de internacionalización en inglés y español.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/bounded-context-dashboard</td>
      <td><code>8064466</code></td>
      <td>feat(dashboard): add application layer of the bounded context</td>
      <td>Capa de aplicación del bounded context Dashboard.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/bounded-context-dashboard</td>
      <td><code>5cc38ab</code></td>
      <td>feat(dashboard): add presentatiom layer of the bounded context</td>
      <td>Capa de presentación del bounded context Dashboard.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/inventory</td>
      <td><code>86fdf47</code></td>
      <td>feat(inventory): add application layer of the bounded context</td>
      <td>Capa de aplicación del bounded context Inventory.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/inventory</td>
      <td><code>d0955e4</code></td>
      <td>feat(inventory): add domain layer of the bounded context</td>
      <td>Capa de dominio del bounded context Inventory.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/inventory</td>
      <td><code>d46b599</code></td>
      <td>feat(inventory): add infrastructure layer of the bounded context</td>
      <td>Capa de infraestructura del bounded context Inventory.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/inventory</td>
      <td><code>dc21981</code></td>
      <td>feat(inventory): add presentation layer of the bounded context</td>
      <td>Capa de presentación del bounded context Inventory.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/products</td>
      <td><code>72ed938</code></td>
      <td>feat(products): add domain layer of the bounded context</td>
      <td>Capa de dominio del bounded context Products.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/products</td>
      <td><code>4cf657e</code></td>
      <td>feat(products): add presentation layer of the bounded context</td>
      <td>Capa de presentación del bounded context Products.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/suppliers</td>
      <td><code>acf7099</code></td>
      <td>feat(suppliers): add domain layer of the bounded context</td>
      <td>Capa de dominio del bounded context Suppliers.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/suppliers</td>
      <td><code>044dd1f</code></td>
      <td>feat(suppliers): add presentation layer of the bounded context</td>
      <td>Capa de presentación del bounded context Suppliers.</td>
      <td>08-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/analytics</td>
      <td><code>e790530</code></td>
      <td>feat(analytics): add application layer</td>
      <td>Capa de aplicación del bounded context Analytics.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/analytics</td>
      <td><code>ca0679d</code></td>
      <td>feat(analytics): add presentation layer</td>
      <td>Capa de presentación del bounded context Analytics.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/communication</td>
      <td><code>ddc2bd8</code></td>
      <td>feat(communication): add application layer</td>
      <td>Capa de aplicación del bounded context Communication.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/communication</td>
      <td><code>a6ea987</code></td>
      <td>feat(communication): add presentation layer</td>
      <td>Capa de presentación del bounded context Communication.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/conservation</td>
      <td><code>28e4d6a</code></td>
      <td>feat(conservation): add domain/model/storage-zone.entity.ts</td>
      <td>Conservation: entidad de zona de almacenamiento.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/conservation</td>
      <td><code>7893fbc</code></td>
      <td>feat(conservation): add infrastructure/conservation-api.ts</td>
      <td>Conservation: API simulada de conservación.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/conservation</td>
      <td><code>6757a0e</code></td>
      <td>feat(conservation): add application/conservation.store.ts</td>
      <td>Conservation: store de la capa de aplicación.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/conservation</td>
      <td><code>1f91f4f</code></td>
      <td>feat(conservation): add presentation/views/conservation-monitoring/conservation-monitoring.ts</td>
      <td>Conservation: vista de monitoreo de temperatura y humedad.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/conservation</td>
      <td><code>a911fc2</code></td>
      <td>feat(conservation): add presentation/views/conservation-alerts/conservation-alerts.ts</td>
      <td>Conservation: vista de alertas de conservación.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/shared</td>
      <td><code>d59262e</code></td>
      <td>feat(shared): add domain/model/domain-error.ts</td>
      <td>Shared Kernel: error de dominio base.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/shared</td>
      <td><code>de23b15</code></td>
      <td>feat(shared): add infrastructure/fake-api.ts</td>
      <td>Shared Kernel: API simulada compartida por los contextos.</td>
      <td>09-10-2026</td>
    </tr>
    <tr>
      <td>5Bits-OrganiK/organik-web-application</td>
      <td>feature/shared</td>
      <td><code>bfdf471</code></td>
      <td>feat(shared): add presentation/views/prototype-flow/prototype-flow.ts</td>
      <td>Shared Kernel: vista del flujo del prototipo.</td>
      <td>09-10-2026</td>
    </tr>
  </tbody>
</table>

---

#### 5.2.2.5. Execution Evidence for Sprint Review.

Durante el Sprint 2 el equipo desplegó la primera versión de la Web Application y una nueva versión de la Landing Page de **OrganiK**. Se presentan las vistas públicas de ambos productos. Las pantallas de los módulos internos (dashboard, inventario, productos, proveedores, alertas, analítica y conservación) están implementadas en el repositorio y requieren una sesión autenticada.

##### Evidencia 1: Landing Page (nueva versión)
La Landing Page mantiene su pantalla principal e incorpora selector de idioma ES/EN, acceso a la aplicación mediante los botones de inicio de sesión y enlaces a las páginas legales en el footer.

![Landing Page nueva versión](./assets/chapter-05/s2-landing-home.png)
*Figura: Pantalla principal de la Landing Page de OrganiK en español.*

##### Evidencia 2: Términos y Condiciones (US-039)
Se implementó la página de términos y condiciones, con secciones numeradas, enlace de regreso al inicio y selector de idioma.

![Términos y condiciones](./assets/chapter-05/s2-landing-terminos.png)
*Figura: Página de Términos y Condiciones de la Landing Page.*

##### Evidencia 3: Política de Privacidad
Se implementó la página de política de privacidad, enlazada desde el footer de la Landing Page y de la Web Application.

![Política de privacidad](./assets/chapter-05/s2-landing-privacidad.png)
*Figura: Página de Política de Privacidad de la Landing Page.*

##### Evidencia 4: Página 404 de la Landing Page
Se implementó una página de error personalizada para rutas inexistentes.

![Página 404 de la Landing Page](./assets/chapter-05/s2-landing-404.png)
*Figura: Página 404 personalizada de la Landing Page.*

##### Evidencia 5: Web Application — Inicio de sesión
La primera versión de la Web Application incluye la pantalla de acceso, con selector de idioma ES/EN (US-040), enlace de registro, regreso al sitio y enlaces a términos y privacidad.

![Inicio de sesión de la Web Application](./assets/chapter-05/s2-webapp-login.png)
*Figura: Pantalla de inicio de sesión de la Web Application de OrganiK.*

##### Evidencia 6: Web Application — Registro de usuario
Pantalla de creación de cuenta con selección de segmento (minimarket o proveedor), datos del negocio, contraseña y aceptación de términos y condiciones.

![Registro de la Web Application](./assets/chapter-05/s2-webapp-register.png)
*Figura: Pantalla de registro de la Web Application de OrganiK.*

##### Evidencia 7: Web Application — Flujo del prototipo
Vista que consolida el recorrido recomendado del prototipo (dashboard, acciones CRUD, alertas, reportes, proveedores, usuarios y roles) con accesos directos a las interacciones principales.

![Flujo del prototipo](./assets/chapter-05/s2-webapp-prototype.png)
*Figura: Vista de flujo consolidado del prototipo de la Web Application.*

##### Evidencia 8: Web Application — Página 404
Página de error para rutas inexistentes de la aplicación.

![Página 404 de la Web Application](./assets/chapter-05/s2-webapp-404.png)
*Figura: Página 404 de la Web Application de OrganiK.*

---

#### 5.2.2.6. Services Documentation Evidence for Sprint Review.

En el Sprint 2 no se implementaron Web Services: el repositorio `organik-backend` aún no contiene código y la primera versión del RESTful API está prevista a partir del Sprint 3, con su documentación OpenAPI/Swagger. Para avanzar en el frontend, la Web Application consume una API simulada (`fake-api` e `in-memory-gateway` del Shared Kernel) que respeta los contratos de los endpoints definidos en el capítulo III, de modo que la integración con el backend solo requerirá reemplazar la capa de infraestructura. La relación de endpoints documentados con OpenAPI se incluirá en el Sprint 3.

---

#### 5.2.2.7. Software Deployment Evidence for Sprint Review.

Durante el Sprint 2 se desplegó en Firebase Hosting la nueva versión de la Landing Page y la primera versión de la Web Application de **OrganiK**. Ambos productos se publican con el CLI de Firebase (`firebase deploy --only hosting`), según lo descrito en la sección 5.1.4. Los Web Services se desplegarán en el Sprint 3.

**Landing Page**

* **Repositorio:** https://github.com/5Bits-OrganiK/organik-landing-page-static
* **Entorno local:** http://localhost:4200/
* **URL de Producción:** https://organik-d6e58.web.app/

![Landing Page desplegada en Firebase](./assets/chapter-05/s2-landing-home.png)
*Figura: Nueva versión de la Landing Page desplegada en Firebase Hosting.*

**Web Application**

* **Repositorio:** https://github.com/5Bits-OrganiK/organik-web-application
* **Entorno local:** http://localhost:4200/
* **URL de Producción:** https://organik-app-d6e58.web.app/login

![Web Application desplegada en Firebase](./assets/chapter-05/s2-webapp-login.png)
*Figura: Primera versión de la Web Application desplegada en Firebase Hosting.*

---

#### 5.2.2.8. Team Collaboration Insights during Sprint.

<p>
  Durante el Sprint 2 los cinco integrantes registraron commits en el repositorio de la Landing Page, y cuatro de ellos en el de la Web Application. El trabajo se organizó con GitFlow: cada bounded context o mejora se desarrolló en una rama <code>feature</code>, con commits siguiendo Conventional Commits.
</p>

<p>
  La siguiente tabla resume los commits registrados por integrante (sin merges, todas las ramas), obtenidos con <code>git log --all --no-merges</code> de cada repositorio.
</p>

<table border="1" cellpadding="4" cellspacing="0" align="center">
  <thead>
    <tr>
      <th>Team Member</th>
      <th>GitHub Username</th>
      <th>Landing Page</th>
      <th>Web Application</th>
      <th>Total</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Atencio Cristobal, Cielo Valentina</td><td>Ciel0p</td><td>2</td><td>25</td><td>27</td></tr>
    <tr><td>Cáceres Pizarro, Albino Florencio</td><td>Lil Doggy / a.caceres</td><td>2</td><td>72</td><td>74</td></tr>
    <tr><td>Olivares Lao, Gustavo Alonso</td><td>GeGuMaGu25</td><td>4</td><td>12</td><td>16</td></tr>
    <tr><td>Quispe Almonacid, Andre Sebastian</td><td>u201815005</td><td>1</td><td>0</td><td>1</td></tr>
    <tr><td>Torres Huaman, Alexis Calin</td><td>Alex_Torres</td><td>2</td><td>8</td><td>10</td></tr>
  </tbody>
</table>

<div align="center">
  <img src="assets/chapter-05/s2-commits-por-integrante.png" alt="Commits por integrante en el Sprint 2" width="90%">
  <p><em>Figura: Commits por integrante en los repositorios de la Landing Page y la Web Application.</em></p>
</div>

<p>
  En la Web Application, los commits se concentran en el Shared Kernel y en las capas de cada bounded context, con avance incremental por rama <code>feature</code>. En la Landing Page, el trabajo se repartió entre el script principal, las páginas legales, la página 404 y los estilos globales.
</p>
