USE SistemaInventario;
-- Creación de vistas
CREATE VIEW VistaInventario AS
SELECT
    I.InventarioID,
    A.NombreArticulo,
    S.NombreSucursal,
    I.Cantidad,
    I.FechaEntrada,
    I.FechaSalida
FROM Inventario I
JOIN Articulos A ON I.ArticuloID = A.ArticuloID
JOIN Sucursales S ON I.SucursalID = S.SucursalID;