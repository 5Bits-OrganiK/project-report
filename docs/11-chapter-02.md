# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores

Para **OrganiK**, hemos identificado tres tipos de competidores que actualmente ofrecen soluciones relacionadas con la gestión de inventarios, abastecimiento, trazabilidad y monitoreo de productos:

- **Plataformas de gestión empresarial e inventarios:** Ofrecen módulos para controlar productos, existencias, compras, ventas y proveedores, pero no necesariamente están especializadas en productos orgánicos ni integran el monitoreo de condiciones de almacenamiento.
- **Plataformas especializadas en trazabilidad y cadena de suministro:** Permiten realizar seguimiento de productos y operaciones logísticas, aunque pueden estar orientadas principalmente a empresas de mayor tamaño y requerir implementaciones más complejas.
- **Soluciones de monitoreo IoT:** Permiten supervisar variables ambientales como temperatura y humedad, pero generalmente se enfocan en el monitoreo de las condiciones físicas sin integrar directamente inventario, abastecimiento y gestión de proveedores.

OrganiK busca diferenciarse mediante la integración de estos componentes dentro de una misma plataforma, conectando las necesidades de los **administradores de minimarkets** con la oferta de los **proveedores**.

### 2.1.1. Análisis competitivo

<table border="1" cellspacing="0" cellpadding="5">
  <!-- Título principal -->
  <tr>
    <th colspan="5">Competitive Analysis Landscape</th>
  </tr>

  <!-- Explicación -->
  <tr>
    <th>¿Por qué llevar a cabo este análisis?</th>
    <td colspan="4">
      Este análisis se lleva a cabo con la finalidad de conocer las soluciones existentes relacionadas con la gestión de inventarios, abastecimiento, trazabilidad y monitoreo de productos, identificando sus principales fortalezas y limitaciones para determinar cómo OrganiK puede diferenciarse y generar valor para sus usuarios.
    </td>
  </tr>

  <!-- Encabezados competidores -->
  <tr>
    <th colspan="2">Competidores</th>
    <th>
      OrganiK
      <br>
      <img src="../assets/img/chapter-2/organiklogo.png" alt="OrganiK" width="100">
    </th>
    <th>
      Plataformas de gestión de inventarios
      <br>
      <img src="../assets/img/chapter-2/inventory.png" alt="Plataformas de inventarios" width="100">
    </th>
    <th>
      Soluciones IoT de monitoreo
      <br>
      <img src="../assets/img/chapter-2/iot.png" alt="Soluciones IoT" width="100">
    </th>
  </tr>

  <!-- PERFIL -->
  <tr>
    <th rowspan="2">Perfil</th>
    <th>Overview</th>
    <td>
      Plataforma digital orientada a la gestión logística, abastecimiento e inventario de productos orgánicos, integrada con monitoreo de temperatura y humedad.
    </td>
    <td>
      Plataformas orientadas principalmente a la administración de inventarios, productos, compras, ventas y proveedores.
    </td>
    <td>
      Soluciones especializadas en recopilar y visualizar información ambiental mediante sensores IoT.
    </td>
  </tr>

  <tr>
    <th>Ventaja competitiva<br>¿Qué valor ofrece a los clientes?</th>
    <td>
      Integración entre inventario, abastecimiento, proveedores y monitoreo de las condiciones de almacenamiento dentro de una misma plataforma.
    </td>
    <td>
      Amplia variedad de funcionalidades administrativas y capacidad para gestionar diferentes tipos de productos y operaciones empresariales.
    </td>
    <td>
      Monitoreo continuo de variables ambientales y generación de información en tiempo real sobre las condiciones de almacenamiento.
    </td>
  </tr>

  <!-- PERFIL DE MARKETING -->
  <tr>
    <th rowspan="2">Perfil de Marketing</th>
    <th>Mercado objetivo</th>
    <td>
      Administradores de minimarkets y proveedores de productos orgánicos que necesitan mejorar la gestión de inventarios, abastecimiento y conservación de sus productos.
    </td>
    <td>
      Pequeñas, medianas y grandes empresas que requieren digitalizar y centralizar sus procesos administrativos y de inventario.
    </td>
    <td>
      Empresas que necesitan controlar condiciones ambientales en almacenes, cámaras de conservación, centros de distribución u otros espacios de almacenamiento.
    </td>
  </tr>

  <tr>
    <th>Estrategias de marketing</th>
    <td>
      Marketing de nicho enfocado en minimarkets y proveedores de productos orgánicos, destacando la integración entre inventario, abastecimiento y monitoreo IoT.
    </td>
    <td>
      Marketing basado en la amplitud de funcionalidades, automatización de procesos y capacidad de integración con otros sistemas empresariales.
    </td>
    <td>
      Marketing enfocado en la eficiencia del monitoreo, reducción de riesgos y supervisión de condiciones ambientales.
    </td>
  </tr>

  <!-- PERFIL DE PRODUCTO -->
  <tr>
    <th rowspan="3">Perfil de Producto</th>
    <th>Productos & Servicios</th>
    <td>
      Plataforma web con gestión de inventarios, productos, lotes, vencimientos, abastecimiento, proveedores y monitoreo IoT de temperatura y humedad.
    </td>
    <td>
      Sistemas web o SaaS para gestión de inventarios, compras, ventas, productos, proveedores y operaciones empresariales.
    </td>
    <td>
      Sensores IoT, plataformas de monitoreo y dashboards para supervisar temperatura, humedad y otras variables ambientales.
    </td>
  </tr>

  <tr>
    <th>Precios & Costos</th>
    <td>
      Modelo orientado a pequeñas y medianas empresas, buscando mantener costos accesibles mediante una solución SaaS.
    </td>
    <td>
      Generalmente utilizan modelos de suscripción cuyos costos dependen del número de usuarios, funcionalidades y volumen de operaciones.
    </td>
    <td>
      El costo depende principalmente de la cantidad de sensores, infraestructura requerida, almacenamiento de datos y servicios de monitoreo.
    </td>
  </tr>

  <tr>
    <th>Canales de distribución<br>(Web y/o Móvil)</th>
    <td>
      Web. Acceso mediante una plataforma centralizada disponible desde navegadores web.
    </td>
    <td>
      Web / Móvil. Plataformas disponibles mediante aplicaciones web, móviles o ambas.
    </td>
    <td>
      Web / Móvil. Dashboards y aplicaciones para visualizar información recopilada por los dispositivos IoT.
    </td>
  </tr>

  <!-- ANÁLISIS SWOT -->
  <tr>
    <th rowspan="4">Análisis SWOT</th>
    <th>Fortalezas</th>
    <td>
      Integración de inventario, abastecimiento, proveedores y monitoreo IoT. Enfoque especializado en productos orgánicos. Dashboards diferenciados para cada segmento.
    </td>
    <td>
      Amplia cantidad de funcionalidades administrativas y experiencia en gestión empresarial.
    </td>
    <td>
      Especialización en monitoreo ambiental y recopilación continua de datos.
    </td>
  </tr>

  <tr>
    <th>Debilidades</th>
    <td>
      Startup en etapa inicial, bajo reconocimiento de marca y dependencia inicial de datos IoT simulados para validar el funcionamiento de la solución.
    </td>
    <td>
      Pueden requerir configuraciones complejas y no estar específicamente adaptadas a los procesos de productos orgánicos y conservación.
    </td>
    <td>
      Se enfocan principalmente en el monitoreo ambiental y pueden requerir sistemas adicionales para gestionar inventarios y abastecimiento.
    </td>
  </tr>

  <tr>
    <th>Oportunidades</th>
    <td>
      Crecimiento de la digitalización de pequeños negocios, necesidad de mejorar el control de productos y posibilidad de incorporar sensores IoT reales y capacidades analíticas avanzadas.
    </td>
    <td>
      Mayor demanda de herramientas digitales para pequeñas y medianas empresas y crecimiento de soluciones SaaS.
    </td>
    <td>
      Expansión del uso de IoT para supervisar condiciones de almacenamiento y conservación de productos.
    </td>
  </tr>

  <tr>
    <th>Amenazas</th>
    <td>
      Entrada de plataformas empresariales con mayores recursos, resistencia de los usuarios al cambio y dificultad inicial para establecer una red suficiente de proveedores y minimarkets.
    </td>
    <td>
      Competencia de plataformas consolidadas con mayor reconocimiento, recursos y ecosistemas de integración.
    </td>
    <td>
      Aparición de soluciones IoT de menor costo y evolución rápida de las tecnologías de sensores y monitoreo.
    </td>
  </tr>
</table>

### 2.1.2. Estrategias y tácticas frente a competidores

Luego de haber realizado el análisis de nuestra solución con respecto a las soluciones existentes, nuestro equipo procederá a plantear estrategias y tácticas que permitan a **OrganiK** diferenciarse y generar mayor valor para sus segmentos objetivo.

#### Matriz CAME para el desarrollo de estrategias en base al análisis FODA

| **Análisis FODA cruzado** | **Oportunidades** | **Amenazas** |
|---|---|---|
| **Fortalezas (F)**<br>1. Integración de inventario, abastecimiento y monitoreo IoT.<br>2. Especialización en productos orgánicos.<br>3. Dashboards diferenciados para minimarkets y proveedores.<br>4. Centralización de información operativa. | **Estrategia (FO) — Estrategias Ofensivas**<br>1. Posicionar OrganiK como una solución especializada para la gestión de productos orgánicos.<br>2. Promover la integración entre minimarkets y proveedores como principal elemento diferenciador.<br>3. Incorporar progresivamente sensores IoT reales para ampliar las capacidades de monitoreo.<br>4. Desarrollar capacidades analíticas que permitan identificar patrones de inventario y abastecimiento.<br>5. Establecer alianzas con minimarkets y proveedores para validar y ampliar la plataforma. | **Estrategia (FA) — Estrategias Defensivas**<br>1. Diferenciar OrganiK mediante la integración de procesos que normalmente requieren múltiples herramientas.<br>2. Mantener una interfaz sencilla para reducir la complejidad frente a plataformas empresariales de mayor tamaño.<br>3. Priorizar la especialización en productos orgánicos frente a soluciones generalistas.<br>4. Fortalecer la seguridad y privacidad de la información gestionada por la plataforma.<br>5. Utilizar los resultados de pilotos con usuarios para demostrar el valor de la solución frente a competidores consolidados. |
| **Debilidades (D)**<br>1. Bajo reconocimiento de marca.<br>2. Recursos limitados frente a plataformas consolidadas.<br>3. Plataforma en etapa inicial de desarrollo.<br>4. Dependencia inicial de datos IoT simulados. | **Estrategia (DO) — Reorientación**<br>1. Realizar validaciones mediante Lean UX con administradores de minimarkets y proveedores.<br>2. Implementar pilotos con usuarios reales para obtener retroalimentación temprana.<br>3. Priorizar las funcionalidades principales antes de ampliar el alcance de la plataforma.<br>4. Desarrollar contenido demostrativo sobre los beneficios de centralizar inventario, abastecimiento y monitoreo.<br>5. Evolucionar progresivamente desde datos IoT simulados hacia sensores reales. | **Estrategia (DA) — Supervivencia**<br>1. Priorizar las funcionalidades de mayor valor para evitar competir directamente con plataformas empresariales de propósito general.<br>2. Mantener costos de implementación accesibles para pequeñas y medianas empresas.<br>3. Establecer mecanismos de respaldo y seguridad de la información.<br>4. Validar continuamente la solución para reducir riesgos de desarrollo innecesario.<br>5. Construir progresivamente una red de proveedores y minimarkets para fortalecer el efecto de red de la plataforma. |

## 2.2. Entrevistas

### 2.2.1. Diseño de las entrevistas

## Segmento Objetivo 1: Administradores de minimarkets

<h4 id="PreguntPersonal">Preguntas Personales:</h4>

¿Me podrías brindar tu nombre, edad y a qué te dedicas actualmente?

<h4 id="PreguntEspe">Preguntas específicas:</h4>

1- ¿Cuál es tu función dentro del minimarket y qué actividades realizas relacionadas con el inventario?

2- ¿Cómo llevas actualmente el control de los productos que tienes disponibles?

3- ¿Qué herramienta utilizas actualmente para registrar y consultar tu inventario?

4- ¿Cómo controlas los lotes y las fechas de vencimiento de los productos?

5- ¿Con qué frecuencia encuentras productos próximos a vencer que no han sido identificados oportunamente?

6- ¿Qué problemas suelen presentarse cuando el nivel de stock de un producto disminuye?

7- ¿Cómo determinas actualmente cuándo necesitas realizar un nuevo pedido de abastecimiento?

8- ¿Cómo buscas o contactas a tus proveedores cuando necesitas reponer productos?

9- ¿Qué dificultades encuentras al comparar la disponibilidad de productos entre diferentes proveedores?

10- ¿Cómo realizas actualmente el seguimiento de los pedidos realizados a tus proveedores?

11- ¿Has tenido problemas relacionados con las condiciones de almacenamiento, como temperatura o humedad?

12- ¿Actualmente realizas algún tipo de monitoreo de la temperatura o humedad de las zonas donde almacenas tus productos?

13- ¿Qué tan útil sería para ti recibir una alerta cuando las condiciones de almacenamiento puedan representar un riesgo para determinados productos?

14- ¿Qué información consideras más importante visualizar en un dashboard de gestión de tu minimarket?

15- ¿Qué tan útil sería para ti contar con una plataforma que integre inventario, abastecimiento, proveedores y monitoreo de las condiciones de almacenamiento?

16- ¿Qué características tendría que tener una plataforma de este tipo para que estuvieras dispuesto a utilizarla?

---

## Segmento Objetivo 2: Proveedores de productos orgánicos

<h4 id="PreguntPersonal">Preguntas Personales:</h4>

¿Me podrías brindar tu nombre, edad y a qué te dedicas actualmente?

<h4 id="PreguntEspe">Preguntas específicas:</h4>

1- ¿Cuál es tu función dentro de la empresa o negocio proveedor?

2- ¿Cómo gestionas actualmente el catálogo de productos que ofreces?

3- ¿Cómo controlas la disponibilidad de tus productos y lotes?

4- ¿Qué herramienta utilizas actualmente para gestionar tu inventario?

5- ¿Cómo recibes actualmente las solicitudes o pedidos de tus clientes?

6- ¿Qué dificultades encuentras cuando recibes pedidos de diferentes minimarkets al mismo tiempo?

7- ¿Cómo realizas actualmente el seguimiento de los pedidos desde que son recibidos hasta que son atendidos?

8- ¿Cómo informas a tus clientes sobre la disponibilidad de determinados productos?

9- ¿Qué dificultades tienes para mantener actualizada la información sobre precios y disponibilidad?

10- ¿Cómo coordinas actualmente el despacho o abastecimiento de los productos solicitados?

11- ¿Has tenido problemas relacionados con la pérdida o deterioro de productos durante el almacenamiento?

12- ¿Qué información consideras importante conocer sobre los productos y lotes antes de atender un pedido?

13- ¿Qué tan útil sería para ti contar con una plataforma donde los minimarkets puedan consultar directamente los productos que tienes disponibles?

14- ¿Qué tan útil sería recibir y gestionar las solicitudes de abastecimiento desde una plataforma centralizada?

15- ¿Qué información te gustaría visualizar en un dashboard destinado específicamente a proveedores?

16- ¿Qué características tendría que tener una plataforma de este tipo para que estuvieras dispuesto a utilizarla?
