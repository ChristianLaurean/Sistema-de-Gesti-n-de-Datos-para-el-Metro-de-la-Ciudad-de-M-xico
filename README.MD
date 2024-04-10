# Sistema de Gestión de Datos para el Metro de la Ciudad de México

![imagen_metro](https://github.com/ChristianLaurean/Sistema-de-Gestion-Metro-CDMX/blob/main/img/metro-cdmx.jpg)

Este proyecto es un sistema de gestión de datos desarrollado para el metro de la Ciudad de México. Proporciona una estructura eficiente para almacenar y administrar información relacionada con estaciones, trenes, conductores y otros elementos clave del sistema de transporte.

## Componentes del Proyecto

### Diagrama Conceptual Entidad-Relación

![Diagrama_Conceptual](https://github.com/ChristianLaurean/Sistema-de-Gestion-Metro-CDMX/blob/main/img/Diagrama_conceptual.png)

Este diagrama muestra las entidades clave del sistema y las relaciones entre ellas. Proporciona una vista de alto nivel de la estructura de la base de datos.

### Diagrama Físico Detallado

![Diagrama_Físico](https://github.com/ChristianLaurean/Sistema-de-Gestion-Metro-CDMX/blob/main/img/Diagrama_fisico.png)

El diagrama físico detallado refleja la implementación real de la base de datos, incluyendo tablas, columnas, tipos de datos y relaciones específicas.

### Creación de la Base de Datos y Tablas

Se implementaron las tablas definidas en el diagrama físico utilizando SQL. Estas tablas incluyen información sobre estaciones, conductores, horarios y más, formando la estructura central de la base de datos.

### Stored Procedures para Distancia entre Estaciones

Se diseñaron y desarrollaron Stored Procedures que calculan la distancia entre dos estaciones. Esta funcionalidad proporciona información útil para los usuarios del sistema.

### Trigger de Control de Conductores

Se implementó un Trigger que actualiza una tabla específica para mantener un registro de los conductores que están actualmente trabajando en el sistema. Esto garantiza un seguimiento en tiempo real de la disponibilidad de los conductores.

### Administración de Usuarios

Se desarrolló un sistema para administrar los usuarios que trabajan en el metro. Esto incluye la creación, modificación de cuentas de usuarios con los permisos adecuados.
