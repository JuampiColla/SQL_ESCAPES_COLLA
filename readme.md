## Introducción

El presente proyecto consiste en el diseño y desarrollo de una base de datos relacional para la gestión integral de un negocio dedicado a la venta y colocación de caños de escape para automóviles. La solución propuesta permite organizar y administrar información relevante sobre clientes, marcas y modelos de autos, tipos de partes de escape y piezas individuales, facilitando la trazabilidad y el control de los productos y servicios ofrecidos.

## Objetivo

El objetivo principal de este proyecto es brindar una herramienta robusta y eficiente para la administración de los datos operativos del negocio, permitiendo gestionar de manera centralizada la información de clientes, vehículos, piezas y partes de escape. Además, la base de datos está diseñada para soportar funcionalidades cross-funcionales como la generación de reportes analíticos, el seguimiento de ventas, la gestión de inventario y la obtención de información contable y logística, contribuyendo así a la toma de decisiones estratégicas y a la optimización de los procesos internos del negocio.

## Situación Problemática

En el contexto de un negocio dedicado a la venta y colocación de caños de escape para automóviles, la gestión manual de la información genera múltiples inconvenientes, tales como la duplicidad de datos, la dificultad para acceder a información actualizada, la falta de trazabilidad en las operaciones y la posibilidad de cometer errores en la administración de inventarios y ventas. Además, la ausencia de un sistema centralizado dificulta la obtención de reportes analíticos y contables, lo que limita la capacidad de tomar decisiones informadas y estratégicas.

La implementación de una base de datos relacional permite superar estas brechas, proporcionando una estructura organizada y segura para almacenar y consultar la información relevante del negocio. De esta manera, se optimizan los procesos internos, se mejora la precisión en la gestión de inventarios y ventas, y se facilita el acceso a información clave para la logística, la contabilidad y el análisis de desempeño del negocio.

## Modelo de Negocio

La organización que utiliza esta solución es un taller y comercio especializado en la venta y colocación de caños de escape para automóviles. Su actividad principal consiste en ofrecer a sus clientes una amplia variedad de piezas y servicios relacionados con sistemas de escape, abarcando tanto la comercialización de productos como la instalación y el asesoramiento técnico. La empresa gestiona un catálogo de marcas y modelos de autos, diferentes tipos de partes de escape y piezas específicas, manteniendo un registro detallado de clientes, operaciones y stock. El modelo de negocio se apoya en la eficiencia operativa, la atención personalizada y la capacidad de responder rápidamente a las necesidades del mercado automotor local.

## Listado de tablas

### Tabla "clientes":

- **Clave primaria:** id_cliente (identificador único del cliente).
- **Clave única:** mail (correo electrónico del cliente).
- **No tiene claves foráneas.**
- La clave primaria "id_cliente" se seleccionó para asegurar la unicidad de cada cliente. El campo "mail" es único para evitar registros duplicados de clientes.



### Tabla "marca_auto":

- **Clave primaria:** id_marca (identificador único de la marca).
- **No tiene claves foráneas.**
- La clave primaria "id_marca" garantiza que cada marca de auto sea única en la base de datos.



### Tabla "modelo_auto":

- **Clave primaria:** id_modelo (identificador único del modelo de auto).
- **Clave foránea:** id_marca (relaciona cada modelo con una marca de auto).
- La clave primaria "id_modelo" asegura la unicidad de cada modelo. La clave foránea "id_marca" mantiene la integridad referencial con la tabla "marca_auto".



### Tabla "tipos_parte":

- **Clave primaria:** id_tipo (identificador único del tipo de parte).
- **No tiene claves foráneas.**
- La clave primaria "id_tipo" permite identificar de forma única cada tipo de parte de escape.



### Tabla "piezas":

- **Clave primaria:** id_pieza (identificador único de la pieza).
- **Claves foráneas:** id_tipo (relaciona la pieza con un tipo de parte), id_modelo (relaciona la pieza con un modelo de auto).
- La clave primaria "id_pieza" asegura la unicidad de cada pieza. Las claves foráneas "id_tipo" y "id_modelo" mantienen la integridad referencial con las tablas "tipos_parte" y "modelo_auto", respectivamente.

## Listado de Vistas



### 1. **vista_piezas**

- **Descripción:**  
  Esta vista muestra información detallada de cada pieza, incluyendo el nombre del tipo de parte, la marca y el modelo del auto, el año y el precio. Permite visualizar los datos de manera legible, reemplazando los identificadores numéricos por nombres descriptivos.

- **Objetivo:**  
  Facilitar la consulta y el análisis de las piezas disponibles, mostrando información relevante y comprensible para el usuario o el administrador del sistema.

- **Tablas que la componen:**  
  - piezas  
  - tipos_parte  
  - modelo_auto  
  - marca_auto



### 2. **vista_marcas**

- **Descripción:**  
  Vista simple que muestra el listado de todas las marcas de autos registradas en la base de datos.

- **Objetivo:**  
  Permitir la consulta rápida de las marcas disponibles sin necesidad de acceder directamente a la tabla principal.

- **Tablas que la componen:**  
  - marca_auto



### 3. **vista_marcas_con_modelos**

- **Descripción:**  
  Muestra cada marca de auto junto con la cantidad de modelos asociados a ella.

- **Objetivo:**  
  Brindar una visión analítica sobre la variedad de modelos que ofrece cada marca, útil para reportes y análisis de inventario.

- **Tablas que la componen:**  
  - marca_auto  
  - modelo_auto



### 4. **vista_marcas_modelos**

- **Descripción:**  
  Presenta el listado de marcas de autos junto con sus modelos y el año de cada modelo.

- **Objetivo:**  
  Facilitar la consulta de los modelos disponibles para cada marca, ordenados por marca, modelo y año.

- **Tablas que la componen:**  
  - marca_auto  
  - modelo_auto

  ### vista_clientes_piezas_localidad

- **Descripción:**  
  Esta vista muestra el listado de localidades de los clientes junto con la cantidad de piezas registradas para cada localidad.

- **Objetivo:**  
  Permite analizar la distribución de piezas en función de la localidad de los clientes, facilitando la toma de decisiones logísticas y comerciales.

- **Tablas que la componen:**  
  - clientes  
  - piezas

---

## Listado de Funciones

### 1. **contar_piezas_por_modelo**

- **Descripción:**  
  Esta función devuelve la cantidad total de piezas asociadas a un modelo de auto específico. Permite conocer cuántas piezas están registradas para cada modelo en la base de datos.

- **Objetivo:**  
  Facilitar el análisis de inventario y la gestión de stock por modelo de auto, ayudando a identificar modelos con mayor o menor cantidad de piezas disponibles.

- **Tablas que manipula:**  
  - piezas



### 2. **clientes_por_localidad**

- **Descripción:**  
  Esta función devuelve la cantidad de clientes registrados en una localidad específica. Permite filtrar y contar los clientes según su ubicación.

- **Objetivo:**  
  Facilitar la segmentación de clientes por zona geográfica, útil para campañas de marketing, logística y atención personalizada.

- **Tablas que manipula:**  
  - clientes


## Listado de Stored Procedures

### 1. **sp_insertar_cliente**

- **Descripción:**  
  Este procedimiento almacenado permite agregar un nuevo cliente a la base de datos, asegurando que todos los datos requeridos sean ingresados correctamente y evitando duplicados por correo electrónico.

- **Objetivo:**  
  Facilitar el registro controlado de clientes, mejorar la integridad de los datos y reducir errores en la carga manual.

- **Tablas que interactúa:**  
  - clientes


### 2. **sp_listar_piezas_por_modelo**

- **Descripción:**  
  Devuelve el listado de todas las piezas asociadas a un modelo de auto específico, mostrando información relevante como tipo de parte y precio.

- **Objetivo:**  
  Permitir la consulta rápida de inventario por modelo de auto, útil para ventas y gestión de stock.

- **Tablas que interactúa:**  
  - piezas  
  - tipos_parte






##  Enlaces



[Tablas](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/tablas.SQL)¨

[Inserción de valores](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/inserciones.SQL)

[Vistas](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/vistas.SQL)

[Funciones](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/funciones.SQL)

[Stored Procedures](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/stored_procedures.SQL)

[Trigger](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/trigger.SQL)

[Casos prueba](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/caso_prueba.SQL)

[Diagrama Entidad-Relación](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/Diagrama%20ER.pdf)



[Comentarios](https://github.com/JuampiColla/SQL_ESCAPES_COLLA/blob/master/Comentarios.SQL)


Alumno: Colla, Juan Pablo
Comisión: 81830