USE caños_escapes;

-- Función para contar piezas por modelo
DELIMITER //
CREATE FUNCTION contar_piezas_por_modelo(p_id_modelo INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT COUNT(*) INTO cantidad
    FROM piezas
    WHERE id_modelo = p_id_modelo;
    RETURN cantidad;
END //
DELIMITER ;

-- Función para buscar clientes por localidad
DELIMITER //
CREATE FUNCTION clientes_por_localidad(p_localidad VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT COUNT(*) INTO cantidad
    FROM clientes
    WHERE localidad = p_localidad;
    RETURN cantidad;
END //
DELIMITER ;