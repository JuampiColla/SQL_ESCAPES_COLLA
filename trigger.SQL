USE caños_escapes;

-- Trigger 1: Registrar automáticamente la fecha de inserción de una pieza
-- Primero, agrega el campo fecha_creacion a la tabla piezas si no existe:
ALTER TABLE piezas ADD COLUMN fecha_creacion DATETIME DEFAULT NULL;

DELIMITER //
CREATE TRIGGER tr_pieza_fecha_creacion
BEFORE INSERT ON piezas
FOR EACH ROW
BEGIN
    SET NEW.fecha_creacion = NOW();
END //
DELIMITER ;

-- Objetivo: Registrar la fecha y hora en que se agrega una nueva pieza, útil para auditoría y control de inventario.

-- Trigger 2: Evitar que se elimine una marca si tiene modelos asociados
DELIMITER //
CREATE TRIGGER tr_prevent_delete_marca
BEFORE DELETE ON marca_auto
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM modelo_auto WHERE id_marca = OLD.id_marca) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede eliminar la marca porque tiene modelos asociados.';
    END IF;
END //
DELIMITER ;

-- Objetivo: Mantener la integridad referencial evitando la eliminación de marcas que aún tienen modelos registrados.