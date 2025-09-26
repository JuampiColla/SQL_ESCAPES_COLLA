-- CASOS DE PRUEBA PARA FUNCIONES Y PROCEDIMIENTOS

-- 1. Prueba de la función contar_piezas_por_modelo
-- Espera la cantidad de piezas asociadas al modelo con id_modelo = 1
SELECT contar_piezas_por_modelo(1) AS cantidad_piezas;

-- 2. Prueba de la función clientes_por_localidad
-- Espera la cantidad de clientes registrados en la localidad 'cordoba'
SELECT clientes_por_localidad('cordoba') AS cantidad_clientes;

-- 3. Prueba del procedimiento almacenado sp_insertar_cliente
-- Inserta un cliente de prueba
CALL sp_insertar_cliente('escapes prueba', 'test', 'usuario', '351-1234567', 'cordoba', 'testusuario@gmail.com');
-- Verifica que el cliente fue insertado
SELECT * FROM clientes WHERE mail = 'testusuario@gmail.com';

-- 4. Prueba del procedimiento almacenado sp_listar_piezas_por_modelo
-- Lista todas las piezas del modelo con id_modelo = 1
CALL sp_listar_piezas_por_modelo(1);

-- 5. Prueba del procedimiento almacenado sp_actualizar_precio_pieza
-- Actualiza el precio de la pieza con id_pieza = 1 a 50000
CALL sp_actualizar_precio_pieza(1, 50000);
-- Verifica que el precio fue actualizado
SELECT precio FROM piezas WHERE id_pieza = 1;