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

> **Plantilla:** completar los datos de cada integrante y reemplazar la ruta de la imagen por la fotografía correspondiente.

| Imagen | Apellidos y nombres | Código | Carrera | Perfil |
|:---:|:---|:---:|:---|:---|
| <img src="./assets/chapter-01/profile_caceres.png" alt="Foto de Albino Caceres" width="120" /> | **Cáceres Pizarro, Albino Florencio** | U201923820 | Ingeniería de Software | Me considero una persona responsable y proactiva que le gusta trabajar en equipo. Además, siempre estoy abierto a ayudar, en lo posible, a cualquier integrante del equipo. Además, busco adaptarme rápidamente a los diversos retos que se presentan en el ciclo. |
| `<img src="./assets/chapter-01/[FOTO_INTEGRANTE_2]" alt="Foto de [NOMBRE_INTEGRANTE_2]" width="120" />` | **[APELLIDOS, NOMBRES]** | [CÓDIGO] | Ingeniería de Software | [Describir brevemente su formación, habilidades técnicas, fortalezas personales y aporte al proyecto.] |
| `<img src="./assets/chapter-01/[FOTO_INTEGRANTE_3]" alt="Foto de [NOMBRE_INTEGRANTE_3]" width="120" />` | **[APELLIDOS, NOMBRES]** | [CÓDIGO] | Ingeniería de Software | [Describir brevemente su formación, habilidades técnicas, fortalezas personales y aporte al proyecto.] |
| `<img src="./assets/chapter-01/[FOTO_INTEGRANTE_4]" alt="Foto de [NOMBRE_INTEGRANTE_4]" width="120" />` | **[APELLIDOS, NOMBRES]** | [CÓDIGO] | Ingeniería de Software | [Describir brevemente su formación, habilidades técnicas, fortalezas personales y aporte al proyecto.] |
| `<img src="./assets/chapter-01/[FOTO_INTEGRANTE_5]" alt="Foto de [NOMBRE_INTEGRANTE_5]" width="120" />` | **[APELLIDOS, NOMBRES]** | [CÓDIGO] | Ingeniería de Software | [Describir brevemente su formación, habilidades técnicas, fortalezas personales y aporte al proyecto.] |

---

## 1.2. Solution Profile

Nuestra solución OrganiK, es una plataforma web para la gestión de inventarios, abastecimiento y monitoreo de productos orgánicos, que conecta a administradores de minimarkets y proveedores mediante un ecosistema digital centralizado.

Para los administradores de minimarkets, permite gestionar productos, inventario, lotes, vencimientos, ubicaciones, mermas y donaciones, además de monitorear temperatura y humedad para detectar posibles riesgos de conservación.

Para los proveedores, permite gestionar productos, disponibilidad y lotes, así como crear y consultar pedidos de abastecimiento dirigidos a los minimarkets. Los proveedores no pueden modificar directamente el inventario.

Los pedidos generados por los proveedores son revisados por el administrador, quien puede aceptarlos o rechazarlos. Si el pedido es aceptado, se registra la operación y se actualiza el inventario; si es rechazado, el inventario permanece sin cambios.

La plataforma integra inventario, abastecimiento, trazabilidad y monitoreo IoT. Durante la implementación, los datos de los sensores podrán ser simulados para validar los flujos de monitoreo y alertas sin depender de dispositivos físicos.

De esta manera, OrganiK busca mejorar la gestión y abastecimiento de productos orgánicos mediante información centralizada y permisos diferenciados**, bajo el principio de que **el proveedor puede iniciar una operación de abastecimiento, pero solamente el administrador del minimarket puede modificar su inventario.

### 1.2.1. Antecedentes y problemática

El sistema alimentario peruano enfrenta importantes pérdidas de productos a lo largo de su cadena de suministro. Se estima que en el Perú se pierden aproximadamente 12,8 millones de toneladas de alimentos al año, equivalente al 47,6% de la oferta anual de alimentos. Dentro de estas pérdidas, alrededor del 44% corresponde a frutas y hortalizas, productos particularmente sensibles a factores como la temperatura, humedad, manipulación y tiempo de almacenamiento (OECD, 2025; Dávila et al., 2021). Esta situación evidencia la necesidad de mejorar los mecanismos de gestión y conservación de productos perecibles.

En los minimarkets, esta problemática se relaciona con las dificultades para mantener un control adecuado sobre el inventario, lotes, fechas de vencimiento y condiciones de almacenamiento. La utilización de registros manuales, hojas de cálculo y herramientas independientes puede dificultar la identificación oportuna de productos próximos a vencer, niveles bajos de stock o condiciones ambientales inadecuadas, incrementando el riesgo de deterioro, desperdicio y desabastecimiento.

Asimismo, el abastecimiento requiere una coordinación constante entre los administradores de minimarkets y los proveedores. Mientras los administradores necesitan gestionar sus necesidades de reposición, los proveedores requieren controlar la disponibilidad de sus productos y generar pedidos dirigidos a los establecimientos. La ausencia de un flujo centralizado puede generar errores, retrasos y poca trazabilidad de las operaciones. En este contexto, **OrganiK** propone una plataforma especializada que integra la gestión de inventarios, lotes, vencimientos, abastecimiento y monitoreo de condiciones de almacenamiento, permitiendo que los proveedores generen pedidos y que los administradores mantengan el control sobre su aceptación y actualización del inventario.

**Técnica "The 5W's y 2H's" aplicada al problema:**

| The 5W's y 2H's | Pregunta | Descripción |
|:---|:---|:---|
| **Who** | ¿Quiénes están involucrados? | Administradores de minimarkets responsables de gestionar inventarios, conservación y abastecimiento, y proveedores encargados de gestionar la disponibilidad de productos y generar pedidos de abastecimiento. |
| **What** | ¿Cuál es el problema? | Dificultad para gestionar de manera integrada inventarios, niveles de stock, lotes, vencimientos, condiciones de almacenamiento y operaciones de abastecimiento de productos orgánicos. |
| **Where** | ¿Dónde ocurre? | En los procesos de almacenamiento, gestión de inventarios y abastecimiento de productos orgánicos en minimarkets, así como en la gestión de productos, disponibilidad y pedidos de los proveedores. |
| **When** | ¿Cuándo sucede? | Durante el almacenamiento, control de inventarios, seguimiento de lotes y vencimientos, identificación de necesidades de reposición, generación de pedidos y aceptación o rechazo de las operaciones de abastecimiento. |
| **Why** | ¿Por qué sucede? | Debido a la fragmentación de la información, el uso de procesos manuales y la ausencia de una plataforma especializada que integre inventario, abastecimiento y monitoreo de las condiciones de almacenamiento. |
| **How** | ¿Cómo se manifiesta? | Mediante dificultades para identificar productos con stock bajo, controlar lotes y vencimientos, detectar condiciones ambientales anómalas, consultar disponibilidad, generar pedidos y realizar seguimiento de las operaciones de abastecimiento. |
| **How Much** | ¿Cuánto impacto tiene? | En el Perú se pierden aproximadamente **12,8 millones de toneladas de alimentos al año**, equivalentes al **47,6% de la oferta anual de alimentos**. Además, alrededor del **44% de estas pérdidas corresponde a frutas y hortalizas**, productos especialmente sensibles a las condiciones de almacenamiento (OECD, 2025; Dávila et al., 2021). A nivel operativo, estas pérdidas pueden traducirse en productos deteriorados o vencidos, desabastecimiento y mayores costos de gestión. |

---

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

Los administradores de minimarkets que comercializan productos orgánicos necesitan mantener un control constante sobre sus inventarios, niveles de stock, lotes, fechas de vencimiento y condiciones de almacenamiento. Sin embargo, la información puede encontrarse fragmentada entre diferentes registros y herramientas, dificultando la identificación temprana de productos próximos a vencer, niveles de inventario bajos o condiciones ambientales que puedan afectar su conservación.

Asimismo, los proveedores necesitan gestionar sus productos, disponibilidad y lotes, además de generar pedidos de abastecimiento dirigidos a los minimarkets. La falta de integración entre ambas partes puede generar errores, retrasos y poca trazabilidad en las operaciones de abastecimiento, incrementando el riesgo de pérdidas y desabastecimiento.

Ante esto nos surge la siguiente pregunta:

**¿Cómo podría una plataforma web centralizar la gestión de inventarios, abastecimiento y monitoreo de las condiciones de almacenamiento de productos orgánicos para reducir pérdidas, anticipar necesidades de reposición y mejorar la coordinación entre administradores de minimarkets y proveedores mediante un flujo controlado de pedidos?**

1. **Domain:** Gestión logística, abastecimiento y monitoreo de productos orgánicos.

2. **Customer Segments:** Administradores de minimarkets y proveedores de productos orgánicos.

3. **Pain Points:** Pérdidas por deterioro o vencimiento, falta de visibilidad sobre las condiciones de almacenamiento, dificultades para controlar niveles de stock, lotes y vencimientos, problemas para consultar disponibilidad de productos y coordinar pedidos de abastecimiento.

4. **Gap:** Falta de una plataforma especializada que integre inventario, monitoreo de condiciones de almacenamiento y abastecimiento entre minimarkets y proveedores, con permisos diferenciados para controlar quién puede modificar el inventario.

5. **Vision/Strategy:** Centralizar la información operativa para identificar riesgos, anticipar necesidades de reposición, gestionar inventarios y facilitar el abastecimiento mediante un flujo en el que los proveedores generen pedidos y los administradores puedan aceptarlos o rechazarlos antes de actualizar el inventario.

6. **Initial Segment:** Administradores de minimarkets y proveedores de productos orgánicos que requieran mejorar el control de inventarios, conservación y abastecimiento.

---

#### 1.2.2.2. Lean UX Assumptions

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

---

#### 1.2.2.3. Lean UX Hypothesis Statements

**Hypothesis 1**

Creemos que al centralizar la gestión de inventarios, niveles de stock, lotes y fechas de vencimiento de los minimarkets, facilitaremos la identificación de productos que requieran atención o reposición. Lo sabremos cuando los administradores puedan identificar los productos críticos desde el dashboard sin necesidad de consultar diferentes registros.

**Hypothesis 2**

Creemos que al implementar un sistema de monitoreo de temperatura y humedad, acompañado de alertas basadas en las condiciones de conservación de los productos, mejoraremos la capacidad de los administradores para detectar condiciones de riesgo. Lo sabremos cuando puedan identificar oportunamente las alertas asociadas a productos o lotes afectados.

**Hypothesis 3**

Creemos que al permitir que los proveedores consulten sus productos y disponibilidad y generen pedidos de abastecimiento dirigidos a los minimarkets, facilitaremos la coordinación de las operaciones de abastecimiento. Lo sabremos cuando los proveedores puedan crear pedidos desde la plataforma y consultar su estado sin depender de canales externos.

**Hypothesis 4**

Creemos que al implementar un flujo en el que los administradores de minimarkets puedan aceptar o rechazar los pedidos generados por proveedores, mantendremos el control sobre las modificaciones del inventario. Lo sabremos cuando un pedido aceptado actualice correctamente el inventario y un pedido rechazado no genere modificaciones sobre este.

**Hypothesis 5**

Creemos que al proporcionar dashboards diferenciados para administradores de minimarkets y proveedores, mejoraremos la experiencia de cada segmento al mostrar únicamente las funcionalidades, indicadores y operaciones relevantes para su actividad. Lo sabremos cuando los usuarios puedan completar sus principales tareas sin acceder a funcionalidades que no correspondan a su segmento.

---

#### 1.2.2.4. Lean UX Canvas

<table>
  <tr>
    <td valign="top">
      <strong>Business problem</strong>
      <br><br>
      Los administradores de minimarkets y proveedores de productos orgánicos gestionan inventarios, abastecimiento y condiciones de almacenamiento mediante procesos que pueden encontrarse fragmentados.
      <br><br>
      Esta falta de centralización dificulta identificar productos con niveles de stock bajos, controlar lotes y vencimientos, detectar condiciones de almacenamiento de riesgo, conocer la disponibilidad de productos y realizar seguimiento de las operaciones de abastecimiento.
      <br><br>
      Además, la ausencia de un flujo controlado de pedidos puede dificultar que los administradores mantengan el control sobre las modificaciones de su inventario.
    </td>
    <td rowspan="2" valign="top">
      <strong>Solution ideas</strong>
      <br><br>
      - Plataforma web especializada en la gestión de productos orgánicos
      <br><br>
      - Dashboard diferenciado para administradores de minimarkets y proveedores
      <br><br>
      - Gestión de inventarios, productos, ubicaciones, lotes y vencimientos
      <br><br>
      - Control de niveles de stock y necesidades de reposición
      <br><br>
      - Gestión de pérdidas, mermas y donaciones
      <br><br>
      - Monitoreo de temperatura y humedad mediante datos simulados
      <br><br>
      - Sistema de alertas para productos o lotes en riesgo
      <br><br>
      - Catálogo y disponibilidad de productos de proveedores
      <br><br>
      - Creación de pedidos de abastecimiento por parte de proveedores
      <br><br>
      - Aceptación o rechazo de pedidos por parte de los administradores
      <br><br>
      - Actualización del inventario únicamente después de aceptar un pedido
      <br><br>
      - Seguimiento del estado de los pedidos
      <br><br>
      - Información centralizada para apoyar decisiones logísticas
    </td>
    <td valign="top">
      <strong>Business Outcomes</strong>
      <br><br>
      - Reducir pérdidas asociadas al deterioro y vencimiento
      <br><br>
      - Mejorar la trazabilidad de productos y lotes
      <br><br>
      - Anticipar necesidades de reposición
      <br><br>
      - Mejorar la eficiencia del abastecimiento
      <br><br>
      - Incrementar la visibilidad sobre las condiciones de almacenamiento
      <br><br>
      - Mejorar la visibilidad sobre el estado de los pedidos
      <br><br>
      - Mantener el control de los administradores sobre las modificaciones del inventario
      <br><br>
      - Centralizar la información operativa de minimarkets y proveedores
    </td>
  </tr>
  <tr>
    <td valign="top">
      <strong>Users and customers</strong>
      <br><br>
      - Administradores de minimarkets
      <br>
      - Proveedores de productos orgánicos
    </td>
    <td valign="top">
      <strong>User benefits</strong>
      <br><br>
      - Mayor visibilidad del inventario
      <br><br>
      - Identificación temprana de productos con stock bajo
      <br><br>
      - Control centralizado de productos, lotes y vencimientos
      <br><br>
      - Identificación de condiciones de almacenamiento anómalas
      <br><br>
      - Consulta de disponibilidad de productos
      <br><br>
      - Creación y seguimiento de pedidos de abastecimiento
      <br><br>
      - Control del administrador sobre la aceptación o rechazo de pedidos
      <br><br>
      - Mejor coordinación entre minimarkets y proveedores
    </td>
  </tr>
  <tr>
    <td valign="top">
      <strong>Hypotheses</strong>
      <br><br>
      - Si se centraliza el inventario y los lotes, se facilitará la identificación de productos que requieren atención o reposición.
      <br><br>
      - Si se implementan alertas basadas en temperatura y humedad, se detectarán oportunamente condiciones de almacenamiento de riesgo.
      <br><br>
      - Si los proveedores pueden consultar sus productos y generar pedidos de abastecimiento, se facilitará la coordinación con los minimarkets.
      <br><br>
      - Si los administradores pueden aceptar o rechazar los pedidos antes de actualizar el inventario, se mantendrá el control sobre las modificaciones de sus existencias.
      <br><br>
      - Si cada segmento cuenta con un dashboard especializado, se facilitará la ejecución de sus tareas principales.
    </td>
    <td valign="top">
      <strong>What’s the most important thing we need to learn first?</strong>
      <br><br>
      Si los administradores de minimarkets y proveedores perciben suficiente valor en una plataforma integrada de gestión de inventario, abastecimiento y monitoreo de las condiciones de almacenamiento como para incorporarla a sus procesos operativos.
    </td>
    <td valign="top">
      <strong>What’s the least amount of work we need to do to learn the next most important thing?</strong>
      <br><br>
      Realizar entrevistas con administradores de minimarkets y proveedores y validar mediante un prototipo de baja fidelidad los flujos principales de inventario, alertas de monitoreo, consulta de disponibilidad, creación de pedidos por parte del proveedor y aceptación o rechazo de pedidos por parte del administrador.
    </td>
  </tr>
</table>

---

## 1.3. Segmentos Objetivos

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
