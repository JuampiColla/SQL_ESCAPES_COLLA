USE caños_escapes;

-- CASOS DE PRUEBA PARA FUNCIONES Y PROCEDIMIENTOS

-- 1. Prueba de la función contar_piezas_por_modelo
-- Espera la cantidad de piezas asociadas al modelo con id_modelo = 1
SELECT contar_piezas_por_modelo(1) AS cantidad_piezas;


-- 2. Prueba de la función clientes_por_localidad
-- Espera la cantidad de clientes registrados en la localidad 'cordoba'
SELECT clientes_por_localidad('cordoba') AS cantidad_clientes;


-- 3. Prueba del procedimiento almacenado sp_insertar_cliente
-- Inserta un cliente de prueba
CALL sp_insertar_cliente('escapes prueba', 'pedro', 'arroyo', '351-1234567', 'Buenos Aires', 'pedroar@gmail.com');
-- Verifica que el cliente fue insertado
SELECT * FROM clientes WHERE mail = 'pedroar@gmail.com';


-- 4. Prueba del procedimiento almacenado sp_listar_piezas_por_modelo
-- Lista todas las piezas del modelo con id_modelo = 1
CALL sp_listar_piezas_por_modelo(1);


-- Prueba 5. Intenta eliminar una marca que tiene al menos un modelo asociado (por ejemplo, id_marca = 1)
DELETE FROM marca_auto WHERE id_marca = 1;

-- Resultado esperado:
-- El trigger debe impedir la eliminación y mostrar el mensaje:
-- "No se puede eliminar la marca porque tiene modelos asociados."