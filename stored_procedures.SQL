-- Insertar un nuevo cliente
DELIMITER //
CREATE PROCEDURE sp_insertar_cliente(
    IN p_empresa VARCHAR(100),
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_telefono VARCHAR(50),
    IN p_localidad VARCHAR(50),
    IN p_mail VARCHAR(50)
)
BEGIN
    INSERT INTO clientes (empresa, nombre, apellido, telefono, localidad, mail)
    VALUES (p_empresa, p_nombre, p_apellido, p_telefono, p_localidad, p_mail);
END //
DELIMITER ;


-- Listar piezas por modelo de auto
DELIMITER //
CREATE PROCEDURE sp_listar_piezas_por_modelo(
    IN p_id_modelo INT
)
BEGIN
    SELECT p.id_pieza, tp.nombre_parte, p.precio
    FROM piezas p
    JOIN tipos_parte tp ON p.id_tipo = tp.id_tipo
    WHERE p.id_modelo = p_id_modelo;
END //