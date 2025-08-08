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