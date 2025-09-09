-- esta vista sirve para que vea los nombres y no los numeros de las partes, marcas y modelos de los autos
CREATE VIEW vista_piezas AS
SELECT 
    p.id_pieza,
    tp.nombre_parte AS tipo_parte,
    ma.marca AS marca_auto,
    mo.modelo_auto,
    mo.año,
    p.precio
FROM piezas p
JOIN tipos_parte tp ON p.id_tipo = tp.id_tipo
JOIN modelo_auto mo ON p.id_modelo = mo.id_modelo
JOIN marca_auto ma ON mo.id_marca = ma.id_marca;

SELECT * FROM vista_piezas;

-- Vista simple de todas las marcas de autos
CREATE OR REPLACE VIEW vista_marcas AS
SELECT id_marca, marca
FROM marca_auto;

-- Vista de marcas con cantidad de modelos asociados
CREATE OR REPLACE VIEW vista_marcas_con_modelos AS
SELECT m.id_marca, m.marca, COUNT(md.id_modelo) AS cantidad_modelos
FROM marca_auto m
LEFT JOIN modelo_auto md ON m.id_marca = md.id_marca
GROUP BY m.id_marca, m.marca;

-- Vista de marcas y sus modelos
CREATE OR REPLACE VIEW vista_marcas_modelos AS
SELECT m.marca, md.modelo_auto, md.año
FROM marca_auto m
JOIN modelo_auto md ON m.id_marca = md.id_marca
ORDER BY m.marca, md.modelo_auto, md.año;

