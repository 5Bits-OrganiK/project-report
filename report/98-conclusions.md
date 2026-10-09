# Conclusiones

## Conclusiones y recomendaciones.

### Conclusiones

1. El desarrollo de **OrganiK** permitió identificar una problemática real en la gestión de productos orgánicos: la fragmentación de información, el control manual de inventarios, la poca trazabilidad de lotes y la dependencia de canales informales como WhatsApp para coordinar pedidos entre minimarkets y proveedores.

2. Las entrevistas realizadas evidenciaron que tanto administradores de minimarkets como proveedores necesitan una solución centralizada, sencilla y accesible que les permita reducir errores operativos, anticipar vencimientos, controlar stock y mejorar la coordinación del abastecimiento.

3. La propuesta de **OrganiK** se diferencia de soluciones generales de inventario al enfocarse específicamente en productos orgánicos, integrando inventario, lotes, vencimientos, abastecimiento, proveedores y monitoreo de condiciones de conservación como temperatura y humedad.

4. La implementación de la landing page, publicada como sitio estático bilingüe con páginas legales, permitió comunicar de manera clara la propuesta de valor del producto, sus funcionalidades principales, planes comerciales y canales de contacto, funcionando como una primera aproximación para validar el interés del mercado.

5. La primera versión de la Web Application, desarrollada en Angular y organizada por bounded contexts y capas (domain, application, infrastructure, presentation), con internacionalización y una API simulada, permitió construir una base técnica ordenada y escalable, desplegada en Firebase Hosting y gestionada con GitFlow, Conventional Commits y Semantic Versioning.

6. El trabajo colaborativo del equipo permitió avanzar en investigación, diseño, documentación e implementación, fortaleciendo la planificación, asignación de responsabilidades y seguimiento del proyecto mediante herramientas digitales.

### Recomendaciones

1. Completar la Web Application integrando los módulos de requisiciones y órdenes de envío, y conectarla a los Web Services en el Sprint 3, ya que el abastecimiento es el flujo de mayor valor para los usuarios entrevistados.

2. Realizar nuevas validaciones con administradores de minimarkets y proveedores usando prototipos funcionales, no solo mockups, para medir si los usuarios pueden completar tareas clave sin dificultad.

3. Implementar progresivamente un backend con autenticación, roles diferenciados y persistencia de datos, asegurando que los proveedores puedan generar pedidos y que solo los administradores puedan aprobarlos y modificar inventario.

4. Mantener una interfaz responsive y simple, especialmente para dispositivos móviles, debido a que los usuarios gestionan muchas operaciones desde celular durante su jornada laboral.

5. Incorporar métricas operativas en el dashboard, como productos próximos a vencer, stock bajo, pedidos pendientes, productos en riesgo por temperatura/humedad y mermas registradas.

