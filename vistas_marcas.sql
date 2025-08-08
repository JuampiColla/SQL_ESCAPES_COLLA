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