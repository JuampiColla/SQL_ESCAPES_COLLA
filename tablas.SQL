CREATE DATABASE IF NOT EXISTS Caños_escapes;
USE Caños_escapes;

-- Tabla de clientes (tabla 1)

CREATE TABLE IF NOT EXISTS Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    empresa VARCHAR(100) NOT NULL UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(50) UNIQUE,
    localidad VARCHAR(50) NOT NULL,
    mail VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla marca de autos (tabla 2)

CREATE TABLE IF NOT EXISTS marca_auto (
	id_marca INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    marca VARCHAR(100) NOT NULL UNIQUE
    );
    
    -- tabla de modelos de auto (tabla 3)
    

CREATE TABLE IF NOT EXISTS modelo_auto (
	id_modelo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_marca INT NOT NULL,
	modelo_auto VARCHAR (100) NOT NULL,
   año INT NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES marca_auto (id_marca)
    );

    -- tabla de partes de escapes (tabla 4)
    
CREATE TABLE IF NOT EXISTS tipos_parte (
	id_tipo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre_parte VARCHAR(100) NOT NULL UNIQUE
    );
    
-- Tabla de piezas (tabla 5)

CREATE TABLE IF NOT EXISTS piezas (
id_pieza INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_tipo INT NOT NULL, -- se relaciona con la tabla 4
id_modelo INT NOT NULL, -- se relaciona con la tabla 3
precio INT NOT NULL,
FOREIGN KEY (id_tipo) REFERENCES tipos_parte (id_tipo),
FOREIGN KEY (id_modelo) REFERENCES modelo_auto (id_modelo)
);

-- tabla de pedidos (tabla 6)
/*
CREATE TABLE IF NOT EXISTS pedidos (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_cliente INT NOT NULL, -- se relaciona con la tabla clientes (tabla 1)
    id_piezas INT NOT NULL, -- se relaciona con la tabla de piezas (tabla 5)
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY (id_piezas) REFERENCES piezas (id_pieza)
    );
*/     
    -- 1, por ahora el precio total de los pedidos se logra con una funcion. ver como se puede agregar a la tabla
    -- 2,ver como relacionar pedidos con piezas,
    -- 3, como relacionar para que una marca de auto se relacione con un modelo especifico y no con todos los modelos de las demas marcas.