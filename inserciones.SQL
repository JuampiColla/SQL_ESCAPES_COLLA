USE Caños_escapes;
-- vamos a hacer las insercciones

-- INSERCCION DE USUARIOS
INSERT INTO clientes (empresa, nombre, apellido, telefono, localidad, mail) VALUES
("escapes bedoya", "jorge", "Bedoya", "354-15687491", "villa maria", "bedoya@gmai.com"),
("colocadora morero", "carlos", "morero", "382-15687135", "bell ville", "colocadoramorero@gmai.com"),
("escapes lopez", "juan", "lopez", "351-15687412", "cordoba", "juan08@gmail.com"),
("ramirezHnos", "luis", "ramirez", "356-15687499", "san francisco", "luisra@gmail.com"),
("escapes pulga", "mario", "gomez", "354-15687422", "rio cuarto", "gomezmario@gmail.com"),
("colocadora amiga", "carlos", "perez", "359-15687433", "villa maria", "colocaperez@gmail.com"),
("marcelo chapa", "marcelo", "gradiente", "381-15687444", "cordoba", "marcelo92@gmail.com"),
("escapes juan", "juan", "gonzalez", "358-15687455", " noetinger", "juanchogonzalez@gmail.com"),
("Fierros Luis", "luis", "fierro", "357-15687466", "villa del rosario", "Fierrosluis@gmail.com"),
("escapes pablo", "pablo", "gonzalez", "354-15687477", "villa maria", "Pablogon52@gmail.com");    

-- inserccion de marcas de autos (tabla 2)
INSERT INTO marca_auto ( marca) VALUES
("ford"),
( "fiat"),
("chevrolet"),
("volkswagen"),
("peugeot"),
("renault");

-- inserccion modelos de autos (tabla 3)
INSERT INTO modelo_auto ( id_marca, modelo_auto, año) VALUES
(1,"focus", 2015),
(1,"ka", 2016),
(1,"fiesta", 2012),
(1, "ranger", 2021),
(2, "palio", 2018),
(2, "cronos", 2022),
(2, "strada", 2010),
(2, "argo", 2015),
(3, "onix", 2010)
(3, "corsa", 2012),
(3, "cruze", 2010),
(3, "s10", 2015),
(4, "gol", 2017),
(4, "vento", 2022),
(4, "amarok", 2010),
(4, "polo", 2015),
(5, "208", 2020),
(5, "308", 2024),
(5, "408", 2010),
(5, "partner", 2015),
(6, "clio", 2008),
(6, "duster", 2018),
(6, "sandero", 2010),
(6, "alaskan", 2015);

-- insercion partes de escapes (tabla 4) terminado
INSERT INTO tipos_parte (nombre_parte) VALUES
("salida motor"),
("intermedio"),
("primer silenciador"),
("segundo silenciador");

-- insercion de piezas individuales (tabla 5)

INSERT INTO piezas (id_tipo, id_modelo, precio) VALUES
(1, 1, 35420),   -- salida motor, focus
(2, 1, 61234),   -- intermedio, focus
(3, 1, 42110),   -- primer silenciador, focus
(4, 1, 78900),   -- segundo silenciador, focus
(1, 2, 23450),   -- salida motor, ka
(2, 2, 70123),   -- intermedio, ka
(3, 2, 29800),   -- primer silenciador, ka
(4, 2, 54000),   -- segundo silenciador, ka
(1, 3, 45670),   -- salida motor, fiesta
(2, 3, 38900),   -- intermedio, fiesta
(3, 3, 72000),   -- primer silenciador, fiesta
(4, 3, 21000),   -- segundo silenciador, fiesta
(1, 4, 80000),   -- salida motor, ranger
(2, 4, 25000),   -- intermedio, ranger
(3, 4, 67000),   -- primer silenciador, ranger
(4, 4, 32000),   -- segundo silenciador, ranger
(1, 5, 54000),   -- salida motor, palio
(2, 5, 22000),   -- intermedio, palio
(3, 5, 43000),   -- primer silenciador, palio
(4, 5, 78000),   -- segundo silenciador, palio
(1, 6, 37000),   -- salida motor, cronos
(2, 6, 65000),   -- intermedio, cronos
(3, 6, 21000),   -- primer silenciador, cronos
(4, 6, 48000),   -- segundo silenciador, cronos
(1, 7, 22000),   -- salida motor, strada
(2, 7, 57000),   -- intermedio, strada
(3, 7, 80000),   -- primer silenciador, strada
(4, 7, 39000),   -- segundo silenciador, strada
(1, 8, 60000),   -- salida motor, argo
(2, 8, 21000),   -- intermedio, argo
(3, 8, 43000),   -- primer silenciador, argo
(4, 8, 75000),   -- segundo silenciador, argo
(1, 9, 42000),   -- salida motor, onix
(2, 9, 34000),   -- intermedio, onix
(3, 9, 79000),   -- primer silenciador, onix
(4, 9, 22000),   -- segundo silenciador, onix
(1, 10, 21000),  -- salida motor, corsa
(2, 10, 80000),  -- intermedio, corsa
(3, 10, 39000),  -- primer silenciador, corsa
(4, 10, 54000),  -- segundo silenciador, corsa
(1, 11, 70000),  -- salida motor, cruze
(2, 11, 23000),  -- intermedio, cruze
(3, 11, 42000),  -- primer silenciador, cruze
(4, 11, 67000),  -- segundo silenciador, cruze
(1, 12, 32000),  -- salida motor, s10
(2, 12, 78000),  -- intermedio, s10
(3, 12, 21000),  -- primer silenciador, s10
(4, 12, 54000),  -- segundo silenciador, s10
(1, 13, 43000),  -- salida motor, gol
(2, 13, 22000),  -- intermedio, gol
(3, 13, 80000),  -- primer silenciador, gol
(4, 13, 39000),  -- segundo silenciador, gol
(1, 14, 54000),  -- salida motor, vento
(2, 14, 21000),  -- intermedio, vento
(3, 14, 67000),  -- primer silenciador, vento
(4, 14, 32000),  -- segundo silenciador, vento
(1, 15, 78000),  -- salida motor, amarok
(2, 15, 37000),  -- intermedio, amarok
(3, 15, 65000),  -- primer silenciador, amarok
(4, 15, 21000),  -- segundo silenciador, amarok
(1, 16, 48000),  -- salida motor, polo
(2, 16, 22000),  -- intermedio, polo
(3, 16, 57000),  -- primer silenciador, polo
(4, 16, 80000),  -- segundo silenciador, polo
(1, 17, 39000),  -- salida motor, 208
(2, 17, 60000),  -- intermedio, 208
(3, 17, 21000),  -- primer silenciador, 208
(4, 17, 43000),  -- segundo silenciador, 208
(1, 18, 75000),  -- salida motor, 308
(2, 18, 42000),  -- intermedio, 308
(3, 18, 34000),  -- primer silenciador, 308
(4, 18, 79000),  -- segundo silenciador, 308
(1, 19, 22000),  -- salida motor, 408
(2, 19, 21000),  -- intermedio, 408
(3, 19, 80000),  -- primer silenciador, 408
(4, 19, 39000),  -- segundo silenciador, 408
(1, 20, 54000),  -- salida motor, partner
(2, 20, 70000),  -- intermedio, partner
(3, 20, 23000),  -- primer silenciador, partner
(4, 20, 42000),  -- segundo silenciador, partner
(1, 21, 67000),  -- salida motor, clio
(2, 21, 32000),  -- intermedio, clio
(3, 21, 78000),  -- primer silenciador, clio
(4, 21, 21000),  -- segundo silenciador, clio
(1, 22, 54000),  -- salida motor, duster
(2, 22, 43000),  -- intermedio, duster
(3, 22, 22000),  -- primer silenciador, duster
(4, 22, 80000),  -- segundo silenciador, duster
(1, 23, 39000),  -- salida motor, sandero
(2, 23, 54000),  -- intermedio, sandero
(3, 23, 21000),  -- primer silenciador, sandero
(4, 23, 67000),  -- segundo silenciador, sandero
(1, 24, 32000),  -- salida motor, alaskan
(2, 24, 78000),  -- intermedio, alaskan
(3, 24, 21000),  -- primer silenciador, alaskan
(4, 24, 54000);  -- segundo silenciador, alaskan

-- por el momento creo que estarian todos los datos cargados, ahora vamos a crear una vista para que se vean los nombres de las partes, marcas y modelos de los autos
