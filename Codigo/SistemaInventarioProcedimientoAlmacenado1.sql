USE SistemaInventario;
-- Creación de procedimiento almacenado para agregar un nuevo artículo
CREATE PROCEDURE sp_AgregarArticulo
    @NombreArticulo NVARCHAR(100),
    @PrecioUnitario DECIMAL(10, 2),
    @StockMinimo INT,
    @ProveedorID INT
AS
BEGIN
    INSERT INTO Articulos (NombreArticulo, PrecioUnitario, StockMinimo, ProveedorID)
    VALUES (@NombreArticulo, @PrecioUnitario, @StockMinimo, @ProveedorID);
END;