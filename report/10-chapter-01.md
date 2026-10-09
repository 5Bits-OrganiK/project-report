# Capítulo I: Introducción

## 1.1. Startup Profile

### 1.1.1. Descripción de la Startup

5bits es una startup tecnológica enfocada en el desarrollo de soluciones digitales para mejorar la gestión logística, el abastecimiento y la conservación de productos orgánicos. La startup busca contribuir a la transformación digital de los procesos relacionados con la comercialización y distribución de productos orgánicos, promoviendo una gestión más eficiente y sostenible.

Su enfoque se encuentra dirigido principalmente a administradores de minimarkets y proveedores de productos orgánicos, considerando las necesidades y desafíos que ambos segmentos enfrentan dentro de la cadena de abastecimiento. De esta manera, 5bits busca generar valor mediante el uso de tecnologías digitales que faciliten la gestión de información y la coordinación entre los diferentes actores involucrados.

La startup orienta sus esfuerzos hacia la mejora de procesos relacionados con el control de inventarios, abastecimiento, trazabilidad, conservación y gestión de productos orgánicos, buscando contribuir a una cadena de suministro más organizada, eficiente y transparente.

**Misión:** Facilitar la transformación digital de la gestión logística, el abastecimiento y la conservación de productos orgánicos, contribuyendo a que minimarkets y proveedores desarrollen operaciones más eficientes, organizadas y sostenibles.

**Visión:** Convertirse en una startup tecnológica de referencia en la transformación digital de la cadena de abastecimiento de productos orgánicos, promoviendo una gestión más eficiente, transparente y sostenible.

**Valores:** Eficiencia, trazabilidad, sostenibilidad, transparencia, innovación y orientación al usuario.

### 1.1.2. Perfiles de integrantes del equipo

| Imagen | Apellidos y nombres | Código | Carrera | Perfil |
|:---:|:---|:---:|:---|:---|
| <img src="./assets/chapter-01/profile_caceres.png" alt="Foto de Albino Caceres" width="120" /> | **Cáceres Pizarro, Albino Florencio** | U201923820 | Ingeniería de Software | Me considero una persona responsable y proactiva que le gusta trabajar en equipo. Además, siempre estoy abierto a ayudar, en lo posible, a cualquier integrante del equipo. Además, busco adaptarme rápidamente a los diversos retos que se presentan en el ciclo. |
| <img src="./assets/chapter-01/profile_Atencio.jpeg" alt="Foto de Atencio" width="120" /> | **Atencio Cristobal, Cielo Valentina** | U202424216 | Ingeniería de Software | Me considero responsable y creativa. He participado en proyectos de videojuegos, donde también aplico mis habilidades en dibujo digital y diseño. Mi meta es crecer en el campo tecnológico y desarrollarme como futura profesional. |
| <img src="./assets/chapter-01/gustavo-olivares.jpg" alt="Foto de Gustavo Olivares" width="120" /> | **Olivares Lao, Gustavo Alonso** | U202216448 | Ingeniería de Software | Estudiante de Ingeniería de Software (8vo ciclo, UPC) y Desarrollador Front-end Junior. Especializado en React, JavaScript y Python, con un fuerte enfoque en análisis de datos e integración de inteligencia artificial. Busco unirme a un equipo colaborativo para optimizar procesos, aportar soluciones y continuar mi crecimiento profesional. |
| <img src="./assets/chapter-01/Sebastian.png" alt="Foto de Andre Sebastian" width="120" /> | **Quispe Almonacid, Andre Sebastian** | U201815005 | Ingeniería de Software | Me considero una persona analítica, constante y apasionada por la tecnología. Tengo un fuerte interés en la gestión de bases de datos, la estructura de los sistemas y el desarrollo de software. Disfruto entendiendo cómo funcionan las cosas desde la raíz y transformando la lógica en soluciones limpias y eficientes. Mi meta es seguir creciendo en el campo tecnológico y consolidarme como una profesional capaz de conectar bases de datos sólidas con el desarrollo moderno.|
| <img src="./assets/chapter-01/alexis-torres.png" alt="Foto de Alexis Torres" width="125" /> | **Torres Huaman, Alexis Calin** | U20241G152 | Ingeniería de Software | Estudiante de Ingeniería de Software. Me considero una persona comprometida, analítica y apasionada por la resolución de problemas mediante el uso de la tecnología. Destaco por mi habilidad para trabajar en equipo, investigar nuevas herramientas y proponer ideas innovadoras que optimicen el desarrollo de software dentro del proyecto. |


## 1.2. Solution Profile

Nuestra solución OrganiK, es una plataforma web para la gestión de inventarios, abastecimiento y monitoreo de productos orgánicos, que conecta a administradores de minimarkets y proveedores mediante un ecosistema digital centralizado.

Para los administradores de minimarkets, permite gestionar productos, inventario, lotes, vencimientos, ubicaciones, mermas y donaciones, además de monitorear temperatura y humedad para detectar posibles riesgos de conservación.

Para los proveedores, permite gestionar productos, disponibilidad y lotes, así como crear y consultar pedidos de abastecimiento dirigidos a los minimarkets. Los proveedores no pueden modificar directamente el inventario.

Los pedidos generados por los proveedores son revisados por el administrador, quien puede aceptarlos o rechazarlos. Si el pedido es aceptado, se registra la operación y se actualiza el inventario; si es rechazado, el inventario permanece sin cambios.

La plataforma integra inventario, abastecimiento, trazabilidad y monitoreo IoT. Durante la implementación, los datos de los sensores podrán ser simulados para validar los flujos de monitoreo y alertas sin depender de dispositivos físicos.

De esta manera, OrganiK busca mejorar la gestión y abastecimiento de productos orgánicos mediante información centralizada y permisos diferenciados, bajo el principio de que **el proveedor puede iniciar una operación de abastecimiento, pero solamente el administrador del minimarket puede modificar su inventario**.

**Propuesta de valor por segmento:**

| Segmento | Propuesta de valor | Necesidad atendida (entrevistas) |
|:---|:---|:---|
| **Administrador de minimarket** | "Detecta a tiempo qué lotes están por vencer o fuera de temperatura y decide qué entra a tu inventario, todo en un solo lugar." | Revisión manual de vencimientos y vitrinas, mermas no detectadas, stock desactualizado (entrevistas 1, 2 y 3). |
| **Proveedor de productos orgánicos** | "Publica tu catálogo y disponibilidad una vez y sigue cada pedido sin transcribir chats ni recibir llamadas de confirmación." | Pedidos transcritos desde WhatsApp con errores, disponibilidad desactualizada, llamadas para confirmar despachos (entrevistas 4, 5 y 6). |


**Características diferenciales frente a la competencia:** la siguiente tabla resume las capacidades declaradas en las páginas oficiales de los competidores revisados en 2.1 (consulta del 1 de octubre de 2026). Un "No declarado" indica que la función no aparece en la información pública, no que se haya comprobado su inexistencia.

| Capacidad | OrganiK | CasaMarket | limaPOS | Spry Sales |
|:---|:---:|:---:|:---:|:---:|
| Inventario y stock | Sí | Sí | Sí | Sí |
| Lotes y vencimientos | Sí | No declarado | Sí | Sí |
| Alertas de conservación (temperatura y humedad por área) | **Sí** | No declarado | No declarado | No declarado |
| Pedido propuesto por el proveedor y aprobado por el minimarket antes de afectar el inventario | **Sí** | No declarado | No declarado | No declarado |
| Experiencia diferenciada para minimarket y proveedor en la misma plataforma | **Sí** | No declarado | No declarado | No declarado |
| Especialización en productos orgánicos perecibles | **Sí** | No | No | No |
| Punto de venta y facturación electrónica | No (fuera de alcance) | Sí | Sí | Sí |

OrganiK no compite como punto de venta: se posiciona como **complemento especializado** del POS que el minimarket ya usa, enfocado en la conservación de perecibles y en la coordinación con el proveedor. Esta decisión evita competir por cantidad de funcionalidades con plataformas consolidadas (ver estrategias en 2.1.2).


### 1.2.1 Antecedentes y problemática

El sistema alimentario peruano enfrenta importantes pérdidas de productos a lo largo de su cadena de suministro. Se estima que en el Perú se pierden aproximadamente 12,8 millones de toneladas de alimentos al año, equivalente al 47,6% de la oferta anual de alimentos. Dentro de estas pérdidas, una proporción importante corresponde a frutas y hortalizas, productos particularmente sensibles a factores como la temperatura, humedad, manipulación y tiempo de almacenamiento (OECD, 2025; Bedoya-Perales & Dal’ Magro, 2021). Esta situación evidencia la necesidad de mejorar los mecanismos de gestión y conservación de productos perecibles.

En los minimarkets, esta problemática se relaciona con las dificultades para mantener un control adecuado sobre el inventario, lotes, fechas de vencimiento y condiciones de almacenamiento. La utilización de registros manuales, hojas de cálculo y herramientas independientes puede dificultar la identificación oportuna de productos próximos a vencer, niveles bajos de stock o condiciones ambientales inadecuadas, incrementando el riesgo de deterioro, desperdicio y desabastecimiento. Además, estudios aplicados a tiendas de conveniencia en Lima evidencian que la optimización del inventario puede mejorar indicadores operativos como la reposición, el nivel de servicio, la reducción de quiebres de stock y la rentabilidad del negocio (Zavaleta-Zarate et al., 2026).

Asimismo, el abastecimiento requiere una coordinación constante entre los administradores de minimarkets y los proveedores. Mientras los administradores necesitan gestionar sus necesidades de reposición, los proveedores requieren controlar la disponibilidad de sus productos y generar pedidos dirigidos a los establecimientos. La ausencia de un flujo centralizado puede generar errores, retrasos y poca trazabilidad de las operaciones. En este contexto, **OrganiK** propone una plataforma especializada que integra la gestión de inventarios, lotes, vencimientos, abastecimiento y monitoreo de condiciones de almacenamiento, permitiendo que los proveedores generen pedidos y que los administradores mantengan el control sobre su aceptación y actualización del inventario.

**Objetivos de la solución:**

- Centralizar la gestión de productos, inventario, lotes, vencimientos y condiciones de almacenamiento de productos orgánicos.
- Facilitar la coordinación de abastecimiento entre administradores de minimarkets y proveedores mediante un flujo de pedidos controlado.
- Anticipar riesgos operativos asociados a stock bajo, vencimientos próximos y condiciones ambientales inadecuadas.
- Mejorar la trazabilidad de las operaciones de inventario y abastecimiento.

**Técnica "The 5W's y 2H's" aplicada al problema:**

| The 5W's y 2H's | Pregunta | Descripción |
|:---|:---|:---|
| **Who** | ¿Quiénes están involucrados? | Administradores de minimarkets responsables de gestionar inventarios, conservación y abastecimiento, y proveedores encargados de gestionar la disponibilidad de productos y generar pedidos de abastecimiento. |
| **What** | ¿Cuál es el problema? | Dificultad para gestionar de manera integrada inventarios, niveles de stock, lotes, vencimientos, condiciones de almacenamiento y operaciones de abastecimiento de productos orgánicos. |
| **Where** | ¿Dónde ocurre? | En los procesos de almacenamiento, gestión de inventarios y abastecimiento de productos orgánicos en minimarkets, así como en la gestión de productos, disponibilidad y pedidos de los proveedores. |
| **When** | ¿Cuándo sucede? | Durante el almacenamiento, control de inventarios, seguimiento de lotes y vencimientos, identificación de necesidades de reposición, generación de pedidos y aceptación o rechazo de las operaciones de abastecimiento. |
| **Why** | ¿Por qué sucede? | Debido a la fragmentación de la información, el uso de procesos manuales y la ausencia de una plataforma especializada que integre inventario, abastecimiento y monitoreo de las condiciones de almacenamiento. |
| **How** | ¿Cómo se manifiesta? | Mediante dificultades para identificar productos con stock bajo, controlar lotes y vencimientos, detectar condiciones ambientales anómalas, consultar disponibilidad, generar pedidos y realizar seguimiento de las operaciones de abastecimiento. |
| **How Much** | ¿Cuánto impacto tiene? | En el Perú se pierden aproximadamente **12,8 millones de toneladas de alimentos al año**, equivalentes al **47,6% de la oferta anual de alimentos**. Además, alrededor del **44% de estas pérdidas corresponde a frutas y hortalizas**, productos especialmente sensibles a las condiciones de almacenamiento (OECD, 2025; Bedoya-Perales & Dal’ Magro, 2021). A nivel operativo, estas pérdidas pueden traducirse en productos deteriorados o vencidos, desabastecimiento y mayores costos de gestión. |

---

### 1.2.2 Lean UX Process.

#### 1.2.2.1. Lean UX Problem Statements.

En el mercado peruano, los administradores de minimarkets que comercializan productos orgánicos necesitan controlar inventarios, lotes, vencimientos y condiciones de almacenamiento para evitar mermas y reponer a tiempo. Las entrevistas muestran casos de uso combinado de POS, hojas de cálculo, libretas y mensajería; esa dispersión dificulta detectar productos en riesgo y conocer el stock disponible. Los proveedores, por su parte, necesitan mantener actualizados su catálogo, lotes y disponibilidad, y dar seguimiento a los pedidos dirigidos a los minimarkets. La coordinación mediante archivos y conversaciones separadas dificulta confirmar cantidades, cambios y estados de pedido. La magnitud de las pérdidas alimentarias en el Perú y los hallazgos de las entrevistas contextualizan el problema, sin representar una medición de merma específica de los minimarkets entrevistados.

Existen soluciones de gestión comercial e inventario para minimarkets. La oportunidad de 5bits es atender de forma integrada la conservación de productos orgánicos, la trazabilidad por lotes y la coordinación de pedidos entre ambos segmentos. Para el administrador, el problema es no identificar a tiempo vencimientos, condiciones de almacenamiento riesgosas y necesidades de reposición, y no mantener un control verificable sobre la entrada de productos a su inventario. Para el proveedor, es no contar con una vista compartida y actualizada de disponibilidad y estado de pedidos. OrganiK busca reducir estas dificultades mediante un flujo en el que el proveedor genera el pedido y el administrador lo acepta o rechaza antes de actualizar el inventario.


**Problem Statement (plantilla *Brand new initiative* de Lean UX, 3.ª edición):**

> El estado actual de la **gestión de inventario, conservación y abastecimiento de productos orgánicos perecibles en el Perú** se ha enfocado principalmente en **administradores de minimarkets y proveedores mayoristas que controlan stock, lotes y vencimientos con hojas de cálculo, libretas y sistemas POS básicos, y que coordinan pedidos por WhatsApp y llamadas**; en este flujo el 100 % de los administradores entrevistados revisa vencimientos y temperatura de forma manual y el 100 % de los proveedores entrevistados transcribe pedidos desde chats a Excel (ver 2.2.3).
>
> Lo que los productos y servicios existentes no logran resolver es **la integración, en un mismo flujo, de la conservación de productos orgánicos (temperatura, humedad y vencimiento por lote) con la coordinación de pedidos entre el minimarket y su proveedor**: las soluciones revisadas (CasaMarket, limaPOS y Spry Sales) cubren ventas, compras e inventario general, pero no alertan sobre condiciones de conservación ni permiten que el proveedor proponga un pedido que el minimarket acepte o rechace antes de que cambie su inventario.
>
> Nuestro producto atenderá esta brecha mediante **OrganiK, una plataforma web SaaS que centraliza productos, lotes, vencimientos y lecturas de conservación del minimarket, publica el catálogo y la disponibilidad del proveedor, y gestiona pedidos de abastecimiento con un flujo de aprobación en el que solo el administrador del minimarket modifica su inventario**.
>
> Nuestro enfoque inicial será **administradores de minimarkets independientes de productos orgánicos y frescos de Lima Metropolitana, y los proveedores (productores y distribuidoras) que los abastecen**.
>
> Sabremos que tenemos éxito cuando veamos que **(1) los administradores identifican los lotes en riesgo (próximos a vencer o fuera de rango de conservación) en menos de 2 minutos, frente a la revisión manual actual; (2) al menos el 80 % de los productos del minimarket piloto tiene lote y vencimiento registrados; (3) al menos el 70 % de los pedidos entre proveedor y minimarket piloto se crea y decide dentro de OrganiK, sin confirmación por WhatsApp; y (4) se reducen en 20 % las bajas por vencimiento o deterioro durante los tres primeros meses de piloto**.

**Restricciones que se aplican al problema:**

- Durante el ciclo académico, las lecturas de temperatura y humedad se **simulan**; la integración con sensores físicos queda fuera del alcance inicial.
- La solución se limita a una **experiencia web responsive** (Landing Page y Web Application) y un RESTful API propio; no incluye aplicaciones móviles nativas.
- OrganiK **no procesa pagos ni facturación electrónica**; los pedidos registran cantidades y decisiones, no transacciones monetarias.
- El proveedor **no puede modificar el inventario** del minimarket: solo propone pedidos; la decisión y la entrada de inventario corresponden al administrador.
- Los indicadores de éxito se medirán contra una línea base levantada en las pruebas con usuarios, porque las cifras nacionales de pérdida de alimentos contextualizan el problema pero no miden la merma de los minimarkets entrevistados.

**Elementos del Problem Statement:**

| Elemento | Descripción |
|:---|:---|
| **Domain** | Gestión de inventario, conservación y abastecimiento de productos orgánicos perecibles. |
| **Customer Segments** | Administradores de minimarkets de productos orgánicos y proveedores de productos orgánicos. |
| **Pain Points** | Pérdidas por deterioro o vencimiento; revisión manual de lotes, vencimientos y temperatura; información dispersa entre Excel, libretas y chats; disponibilidad desactualizada; pedidos transcritos con errores y sin estado consultable. |
| **Gap** | Las soluciones comerciales revisadas cubren inventario, compras y ventas, pero no integran la conservación de perecibles con un flujo de pedidos proveedor → minimarket con aprobación del administrador. |
| **Vision/Strategy** | Plataforma SaaS especializada que centraliza inventario, lotes, conservación y pedidos, con permisos diferenciados por segmento. |
| **Initial Segment** | Minimarkets independientes de productos orgánicos de Lima Metropolitana y sus proveedores directos. |

**Relación con el análisis 5W+2H:** el *Who* define los dos segmentos del enunciado; el *What* y el *How* se traducen en los pain points; el *Why* (fragmentación y procesos manuales) sustenta el gap; el *Where* y el *When* delimitan el segmento inicial y los momentos del flujo (almacenamiento, reposición, decisión de pedidos); y el *How Much* contextualiza la magnitud de las pérdidas que justifica medir la reducción de bajas.

---

#### 1.2.2.2. Lean UX Assumptions.

**Business Assumptions:**

1. Se considera que los administradores de minimarkets necesitan mejorar el control de sus productos orgánicos para reducir pérdidas asociadas al deterioro y vencimiento.

2. Se plantea que una plataforma centralizada puede mejorar la visibilidad sobre inventarios, niveles de stock, lotes, vencimientos y condiciones de almacenamiento.

3. Se considera que los proveedores necesitan una herramienta especializada para gestionar productos, disponibilidad, lotes y pedidos de abastecimiento dirigidos a diferentes minimarkets.

4. Se asume que la integración entre minimarkets y proveedores permitirá mejorar la eficiencia del proceso de abastecimiento.

5. Se considera que las alertas de temperatura y humedad permitirán identificar oportunamente condiciones que puedan afectar la conservación de los productos.

6. Se plantea que la centralización de los pedidos permitirá mejorar la trazabilidad de las operaciones de abastecimiento.

7. Se estima que un modelo SaaS puede facilitar el acceso de pequeñas y medianas empresas a las funcionalidades de la plataforma sin requerir infraestructura tecnológica propia.

8. Se considera que la principal diferenciación de la solución será integrar la gestión de inventarios, abastecimiento y monitoreo de las condiciones de almacenamiento de productos orgánicos.

9. Se asume que los datos de monitoreo IoT pueden ser simulados durante la etapa inicial para validar los flujos funcionales sin depender de dispositivos físicos.

10. Se asume que la plataforma podrá evolucionar posteriormente para incorporar sensores IoT reales y capacidades analíticas más avanzadas.

11. Se presume que uno de los principales riesgos de adopción será la resistencia de los usuarios a reemplazar procesos manuales y herramientas informales.

12. Se plantea que una interfaz sencilla y dashboards diferenciados permitirán reducir la complejidad para cada tipo de usuario.

13. Se considera que la viabilidad del producto dependerá de que los beneficios obtenidos mediante la reducción de pérdidas y mejora del abastecimiento sean percibidos como superiores al costo de la solución.

**Business Outcome Assumptions**

1. Reducir la cantidad de productos dados de baja como consecuencia de condiciones inadecuadas de almacenamiento o vencimiento.

2. Incrementar la trazabilidad de los productos, lotes y fechas de vencimiento gestionados por los minimarkets.

3. Reducir el tiempo necesario para identificar productos o lotes que puedan encontrarse en condiciones de riesgo.

4. Mejorar la capacidad de los administradores para anticipar necesidades de reposición mediante información sobre niveles de stock.

5. Mejorar la disponibilidad de información para la toma de decisiones relacionadas con el abastecimiento.

6. Incrementar la trazabilidad de los pedidos desde su creación por parte del proveedor hasta su aceptación o rechazo por parte del administrador.

Estos resultados se evaluarán, respectivamente, mediante la cantidad de productos dados de baja por vencimiento o deterioro; el porcentaje de productos con lote y vencimiento registrados; el tiempo para identificar productos en riesgo; el tiempo entre la detección de stock bajo y la decisión de reposición; la disponibilidad de información vigente sobre productos y pedidos; y el porcentaje de pedidos con estado e historial de decisiones consultables. Se compararán con una línea base levantada durante las pruebas con usuarios.

**User Assumptions**

1. Los administradores de minimarkets necesitan visualizar rápidamente el estado de su inventario y los productos próximos a vencer.

2. Los administradores de minimarkets necesitan identificar productos con niveles de stock que requieran reposición.

3. Los administradores de minimarkets valoran recibir alertas cuando las condiciones de almacenamiento puedan afectar determinados productos.

4. Los administradores de minimarkets necesitan consultar la disponibilidad de productos ofrecidos por proveedores conectados.

5. Los proveedores necesitan visualizar y gestionar sus productos, disponibilidad y lotes desde un único sistema.

6. Los proveedores requieren generar pedidos de abastecimiento dirigidos a los minimarkets y consultar el estado de sus operaciones.

7. Ambos segmentos necesitan consultar el estado de un pedido y mantener información actualizada sobre el proceso de abastecimiento.

**User Outcome Assumptions**

1. Los administradores de minimarkets tendrán mayor confianza en la información de su inventario al disponer de un registro centralizado de productos, stock, lotes y vencimientos.

2. Los administradores de minimarkets podrán identificar oportunamente productos con niveles de stock bajos y necesidades de reposición.

3. Los administradores de minimarkets podrán identificar condiciones ambientales anómalas que puedan representar un riesgo para los productos almacenados.

4. Los administradores de minimarkets podrán revisar los pedidos generados por proveedores y decidir si aceptarlos o rechazarlos antes de modificar su inventario.

5. Los proveedores podrán consultar sus productos y disponibilidad, generar pedidos de abastecimiento y realizar seguimiento de su estado.

6. Los usuarios experimentarán una reducción de la incertidumbre respecto al estado de los pedidos de abastecimiento.

7. Los administradores de ambos segmentos podrán tomar decisiones operativas con mayor rapidez al contar con información centralizada y actualizada.

Los resultados de usuario se comprobarán con tareas de consulta de inventario y vencimientos, detección de alertas, identificación de stock bajo, creación y revisión de pedidos, y consulta de su estado. Se observarán el tiempo de ejecución, la finalización de la tarea y los errores; las entrevistas y pruebas permitirán contrastar estos resultados con las prácticas actuales de cada segmento.

**Feature Assumptions**

1. Se considera que permitir registrar, consultar, buscar, filtrar y actualizar productos, cantidades, lotes y vencimientos facilitará el control centralizado del inventario del minimarket.

2. Se plantea que las alertas configurables sobre productos próximos a vencer y condiciones inadecuadas de temperatura o humedad permitirán identificar oportunamente productos en riesgo.

3. Se considera que visualizar registros de temperatura y humedad permitirá al administrador supervisar las condiciones de conservación de los productos.

4. Se plantea que permitir a los proveedores mantener actualizados sus productos, lotes y disponibilidad facilitará que los minimarkets consulten alternativas de abastecimiento desde la plataforma.

5. Se considera que permitir al administrador comunicar necesidades de reposición y al proveedor generar pedidos dirigidos al minimarket permitirá centralizar la coordinación del abastecimiento.

6. Se plantea que reservar al administrador la decisión de aceptar o rechazar pedidos, actualizando el inventario únicamente cuando se acepten, permitirá mantener el control y la trazabilidad de las entradas de productos.

7. Se considera que ofrecer dashboards diferenciados, indicadores, alertas e historial de operaciones permitirá a cada segmento consultar rápidamente el estado de sus actividades y tomar decisiones con información centralizada.

8. Se plantea que un sistema de autenticación, roles y permisos permitirá que administradores y proveedores accedan únicamente a las funcionalidades y datos correspondientes a su negocio.

---

#### 1.2.2.3. Lean UX Hypothesis Statements.

Siguiendo el enunciado, se redacta **un hypothesis statement por cada feature assumption** (8 en total), con la plantilla de Lean UX: *We believe we will achieve [business outcome] if [these personas] attain [this benefit/user outcome] with [this feature]*. En la versión en español: **"Creemos que lograremos [resultado de negocio] si [persona] obtiene [resultado de usuario] con [funcionalidad]"**. Cada hipótesis indica los assumptions de los que proviene (BA = Business Assumption, BOA = Business Outcome Assumption, UA = User Assumption, UOA = User Outcome Assumption, FA = Feature Assumption) y la señal con la que se comprobará.

| ID | Feature assumption | Business outcome | Persona | User outcome | Feature |
|:---:|:---|:---|:---|:---|:---|
| H1 | FA1 | Mayor trazabilidad de productos, lotes y vencimientos (BOA2) | Administrador de minimarket | Confía en un registro único de stock, lotes y vencimientos (UOA1) | Registro, búsqueda, filtro y actualización de inventario por lote |
| H2 | FA2 | Menos productos dados de baja por vencimiento o deterioro (BOA1, BOA3) | Administrador de minimarket | Se entera a tiempo de lotes próximos a vencer o fuera de rango (UOA3) | Alertas configurables de vencimiento y conservación |
| H3 | FA3 | Menor tiempo para detectar condiciones de riesgo (BOA3) | Administrador de minimarket | Supervisa temperatura y humedad sin revisar vitrinas físicamente (UOA3) | Panel de lecturas de temperatura y humedad por área (datos simulados en esta etapa) |
| H4 | FA4 | Más información vigente para decidir el abastecimiento (BOA5) | Proveedor de productos orgánicos | Mantiene su catálogo y disponibilidad en un solo lugar (UOA5) | Catálogo del proveedor con lotes y disponibilidad |
| H5 | FA5 | Reposición anticipada y pedidos centralizados (BOA4, BOA6) | Administrador y proveedor | Comparten la necesidad de reposición y el pedido sin transcribir chats (UOA2, UOA5) | Necesidades de reposición y creación de pedidos por el proveedor |
| H6 | FA6 | Trazabilidad de cada pedido desde su creación hasta su decisión (BOA6) | Administrador de minimarket | Decide qué entra a su inventario y conserva el control (UOA4, UOA6) | Aceptación o rechazo de pedidos con actualización única del inventario |
| H7 | FA7 | Decisiones operativas más rápidas y mayor adopción (BOA5, BA12) | Administrador y proveedor | Consulta el estado de su operación en segundos (UOA7) | Dashboards diferenciados con indicadores, alertas e historial |
| H8 | FA8 | Confianza de ambos segmentos para compartir información en la plataforma (BA3, BA4) | Administrador y proveedor | Accede solo a los datos y acciones de su negocio (UOA4) | Autenticación, roles y permisos por segmento |


**H1.** Creemos que lograremos **incrementar al 80 % el porcentaje de productos con lote y vencimiento registrados** si los **administradores de minimarket** obtienen **un registro único y confiable de su stock, lotes y vencimientos** con **el módulo de inventario que permite registrar, buscar, filtrar y actualizar productos por lote**. Lo comprobaremos con el porcentaje de productos con lote y vencimiento registrados y el tiempo para encontrar un producto crítico, comparado con la línea base de Excel y libreta.

**H2.** Creemos que lograremos **reducir en 20 % las bajas por vencimiento o deterioro** si los **administradores de minimarket** obtienen **aviso oportuno de los lotes próximos a vencer o expuestos a condiciones fuera de rango** con **alertas configurables de vencimiento y conservación**. En esta etapa lo comprobaremos con la tasa de alertas atendidas en pruebas con datos simulados; la reducción de bajas se medirá en el piloto.

**H3.** Creemos que lograremos **reducir el tiempo de detección de condiciones de riesgo a menos de 2 minutos** si los **administradores de minimarket** obtienen **visibilidad continua de la temperatura y la humedad de sus áreas de almacenamiento** con **un panel de lecturas por área con historial**. Lo comprobaremos con el tiempo que tarda el usuario en identificar un área fuera de rango durante la prueba de tareas.

**H4.** Creemos que lograremos **que el 90 % de las consultas de disponibilidad de los minimarkets piloto se resuelva sin llamar ni escribir al proveedor** si los **proveedores** obtienen **un único lugar donde mantener actualizados su catálogo, lotes y disponibilidad** con **el catálogo del proveedor**. Lo comprobaremos con la frecuencia de actualización del catálogo y el número de consultas de disponibilidad hechas fuera de la plataforma.

**H5.** Creemos que lograremos **que el 70 % de los pedidos entre proveedor y minimarket piloto se cree dentro de OrganiK** si **administradores y proveedores** obtienen **una forma de compartir la necesidad de reposición y convertirla en un pedido sin transcribir mensajes** con **necesidades de reposición y creación de pedidos por el proveedor**. Lo comprobaremos con el porcentaje de pedidos creados en la plataforma y los errores de cantidad reportados.

**H6.** Creemos que lograremos **que el 100 % de los pedidos tenga estado e historial de decisión consultables** si los **administradores de minimarket** obtienen **el control de qué productos ingresan a su inventario** con **la aceptación o el rechazo de pedidos que actualiza el inventario una sola vez al aceptar**. Lo comprobaremos verificando que cada decisión quede registrada con actor y fecha y que solo los pedidos aceptados modifiquen el stock.

**H7.** Creemos que lograremos **que el 60 % de los usuarios piloto ingrese a la plataforma al menos cinco días por semana** si **administradores y proveedores** obtienen **el estado de su operación en un solo vistazo** con **dashboards diferenciados con indicadores, alertas e historial**. Lo comprobaremos con la frecuencia de uso semanal y el tiempo de finalización de tareas de consulta.

**H8.** Creemos que lograremos **que ambos segmentos acepten registrar su información operativa en OrganiK (al menos 8 de cada 10 usuarios entrevistados en validación)** si **administradores y proveedores** obtienen **la seguridad de que solo ven y modifican los datos de su propio negocio** con **autenticación, roles y permisos por segmento**. Lo comprobaremos en las entrevistas de validación y con pruebas de acceso que intenten operaciones no permitidas.

La viabilidad del modelo SaaS (BA7 y BA13) no corresponde a una funcionalidad, por lo que se validará con las preguntas de disposición de pago de las entrevistas de validación y con los costos medidos en el piloto.

---
#### 1.2.2.4. Lean UX Canvas.


El Lean UX Canvas sintetiza la propuesta de valor para los dos segmentos y conecta el problema de negocio, los usuarios, los beneficios, las ideas de solución y las hipótesis H1-H8 de la sección anterior.

<table>
 <tr>
 <td valign="top">
 <strong>Business problem</strong>
 <br><br>
 El administrador de minimarket consulta existencias, lotes y conservación en herramientas dispersas mientras necesita detectar riesgos y decidir una reposición sin perder el control del inventario.
 <br><br>
 El proveedor mantiene su oferta y coordina pedidos por canales separados, lo que dificulta confirmar disponibilidad, cantidades y estado de cada operación.
 <br><br>
 El análisis competitivo muestra herramientas de inventario y compras; la oportunidad por comprobar es integrar conservación de perecibles, trazabilidad por lotes y pedidos entre ambos segmentos con aprobación del administrador.
 </td>
 <td rowspan="2" valign="top">
 <strong>Solution ideas</strong>
 <br><br>
 - Registro de stock, lotes y vencimientos para el administrador (H1)
 <br><br>
 - Alertas de vencimiento y conservación, con datos inicialmente simulados (H2)
 <br><br>
 - Panel de temperatura y humedad por área (H3)
 <br><br>
 - Catálogo del proveedor con lotes y disponibilidad (H4)
 <br><br>
 - Necesidades de reposición y pedidos creados por el proveedor (H5)
 <br><br>
 - Aceptación o rechazo por el administrador antes de actualizar inventario (H6)
 <br><br>
 - Dashboards e historial por segmento (H7)
 <br><br>
 - Autenticación, roles y permisos por negocio (H8)
 </td>
 <td valign="top">
 <strong>Business Outcomes</strong>
 <br><br>
 - Bajas por deterioro o vencimiento: comparar su cantidad con una línea base operativa futura
 <br><br>
 - Trazabilidad de productos: medir el porcentaje con lote y vencimiento registrados
 <br><br>
 - Reposición: medir el tiempo entre detección de stock bajo y decisión
 <br><br>
 - Pedidos: medir el porcentaje con estado e historial de decisiones consultables
 <br><br>
 </td>
 </tr>
 <tr>
 <td valign="top">
 <strong>Users and customers</strong>
 <br><br>
 - Administrador de minimarket: Persona que decide sobre inventario, conservación y reposición.
 <br>
 - Proveedor de productos orgánicos: Persona que mantiene oferta y coordina pedidos.
 </td>
 <td valign="top">
 <strong>User benefits</strong>
 <br><br>
 - Administrador: localizar existencias, lotes, vencimientos y condiciones de riesgo al revisar productos y conservación.
 <br><br>
 - Administrador: decidir reposición y aceptar o rechazar un pedido antes de registrar la entrada al inventario.
 <br><br>
 - Proveedor: actualizar oferta y disponibilidad y comprobar el estado de cada pedido dirigido al minimarket.
 <br><br>
 - Ambos: reducir incertidumbre al consultar un historial compartido de la operación.
 </td>
 </tr>
 <tr>
 <td valign="top">
 <strong>Hypotheses</strong>
 <br><br>
 - H1: Más productos con lote y vencimiento registrados si el administrador tiene un registro único de inventario por lote.
 <br><br>
 - H2: Menos bajas por vencimiento o deterioro si el administrador recibe alertas configurables de vencimiento y conservación.
 <br><br>
 - H3: Detección de condiciones de riesgo en menos de 2 minutos con un panel de temperatura y humedad por área.
 <br><br>
 - H4: Consultas de disponibilidad resueltas sin llamadas si el proveedor mantiene su catálogo, lotes y disponibilidad en OrganiK.
 <br><br>
 - H5: Pedidos creados dentro de la plataforma si ambos segmentos comparten necesidades de reposición y pedidos.
 <br><br>
 - H6: Pedidos con estado e historial consultables si solo el administrador acepta o rechaza y el inventario cambia una sola vez.
 <br><br>
 - H7: Uso frecuente de la plataforma con dashboards diferenciados por segmento.
 <br><br>
 - H8: Confianza para compartir información con autenticación, roles y permisos por negocio.
 </td>
 <td valign="top">
 <strong>What’s the most important thing we need to learn first?</strong>
 <br><br>
 - ¿Los administradores podrán identificar rápidamente productos con stock bajo, próximos a vencer o con condiciones de conservación riesgosas mediante un dashboard centralizado?
 <br><br>
 - ¿Los proveedores podrán consultar necesidades de reposición, revisar su disponibilidad y crear pedidos dirigidos a minimarkets sin depender de canales externos?
 <br><br>
 - ¿Los administradores comprenderán y confiarán en el flujo de revisión, aceptación o rechazo de pedidos antes de modificar el inventario?
 <br><br>
 - ¿Las alertas de vencimiento, stock bajo y conservación generarán acciones concretas o serán ignoradas?
 <br><br>
 - ¿La separación de funciones entre administrador y proveedor será suficientemente clara para evitar confusión sobre quién puede modificar inventario y quién puede generar o aprobar pedidos?
 <br><br>
 ¿El valor percibido de centralizar inventario, conservación y abastecimiento será suficiente para que minimarkets y proveedores consideren adoptar OrganiK? 
 </td>
 <td valign="top">
 <strong>What’s the least amount of work we need to do to learn the next most important thing?</strong>
 <br><br>
 - Crear un prototipo navegable del dashboard con datos ficticios pero realistas de inventario, lotes, vencimientos, temperatura, humedad y alertas.
 <br><br>
 - Probar el flujo principal de abastecimiento: identificar una necesidad de reposición, consultar disponibilidad, crear un pedido como proveedor y revisarlo como administrador.
 <br><br>
 - Simular pedidos pendientes para comprobar si el administrador entiende cómo aceptar o rechazar una propuesta y qué efecto tiene cada decisión sobre el inventario.
 <br><br>
 - Mostrar alertas simuladas de stock bajo, vencimiento y conservación para observar si el usuario reconoce su prioridad y realiza una acción adecuada.
 <br><br>
 - Probar perfiles diferenciados de administrador y proveedor para verificar si cada usuario comprende qué acciones puede realizar según su rol.
 <br><br>
 - Medir finalización de tareas, tiempo, errores, necesidad de asistencia y comprensión del estado de cada operación.
 <br><br>
 - Realizar entrevistas breves después de las pruebas para evaluar confianza, facilidad de uso, utilidad percibida, intención de adopción y disposición de pago.
 </td>
 </tr>
</table>

---

## 1.3. Segmentos objetivo.

La solución está dirigida a **dos segmentos objetivos principales** que participan directamente en la cadena de abastecimiento de productos orgánicos: **administradores de minimarkets y proveedores**.

Estos segmentos presentan necesidades de negocio diferentes. Por ello, la plataforma utiliza una infraestructura tecnológica compartida, pero ofrece dashboards, funcionalidades y permisos específicos para cada segmento.

Los roles operativos que puedan existir dentro de cada empresa forman parte de la estructura interna de cada segmento y no constituyen segmentos objetivos independientes.

### 1.3.1. Administradores de Minimarkets

| Dimensión | Detalle del perfil |
|---|---|
| **Perfil Demográfico** | Propietarios, administradores o responsables de pequeños y medianos minimarkets dedicados a la comercialización de productos orgánicos y alimentos frescos. Son responsables de supervisar las operaciones del establecimiento y tomar decisiones relacionadas con inventario, conservación y abastecimiento. |
| **Perfil Geográfico** | Negocios ubicados principalmente en zonas urbanas con demanda de productos orgánicos y necesidad de mantener un abastecimiento constante. El segmento inicial puede concentrarse en Lima Metropolitana. |
| **Perfil Psicográfico** | Personas orientadas a mantener la calidad y disponibilidad de sus productos, reducir pérdidas y mejorar la eficiencia de sus operaciones. Valoran soluciones sencillas que permitan controlar el inventario, anticipar necesidades de reposición y tomar decisiones basadas en información actualizada. |
| **Puntos de Dolor** | Pérdidas ocasionadas por deterioro o vencimiento, dificultad para controlar niveles de stock, lotes y fechas de vencimiento, falta de visibilidad sobre las condiciones de almacenamiento, situaciones de desabastecimiento y dificultad para gestionar y validar pedidos de abastecimiento provenientes de proveedores. |
| **Uso de Tecnología** | Utilizan herramientas digitales para administrar ventas, inventarios y comunicación con proveedores, aunque pueden depender de hojas de cálculo, aplicaciones de mensajería y sistemas independientes que no integran toda la información operativa. |

### 1.3.2. Proveedores de Productos Orgánicos

| Dimensión | Detalle del perfil |
|---|---|
| **Perfil Demográfico** | Empresas, productores, distribuidores o comerciantes mayoristas de productos orgánicos que abastecen a minimarkets. Sus representantes son responsables de gestionar el catálogo, productos, disponibilidad, lotes y pedidos de abastecimiento. |
| **Perfil Geográfico** | Proveedores ubicados en zonas productoras, centros de distribución o áreas comerciales que atienden a minimarkets y otros negocios comercializadores de productos orgánicos. |
| **Perfil Psicográfico** | Negocios orientados a mantener una disponibilidad eficiente de sus productos, generar pedidos de abastecimiento oportunamente y establecer relaciones comerciales duraderas con sus clientes. Valoran la organización, trazabilidad y visibilidad de sus operaciones de abastecimiento. |
| **Puntos de Dolor** | Dificultad para administrar productos y disponibilidad, generar pedidos de abastecimiento para diferentes minimarkets, falta de visibilidad sobre el estado de las operaciones, gestión fragmentada de productos y lotes, y dificultades para coordinar el abastecimiento y mantener actualizada la información de sus productos. |
| **Uso de Tecnología** | Utilizan herramientas digitales, hojas de cálculo y aplicaciones de comunicación para gestionar productos, clientes y pedidos, pero pueden carecer de una plataforma especializada que conecte directamente su disponibilidad de productos con las necesidades de los minimarkets y permita realizar seguimiento de los pedidos generados. |
