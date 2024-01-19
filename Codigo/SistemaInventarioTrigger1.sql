USE SistemaInventario;
-- Creación de trigger para actualizar el stock al insertar en Inventario
CREATE TRIGGER ActualizarStock
ON Inventario
AFTER INSERT
AS
BEGIN
    UPDATE Articulos
    SET StockMinimo = StockMinimo - i.Cantidad
    FROM Articulos a
    INNER JOIN inserted i ON a.ArticuloID = i.ArticuloID;
END;