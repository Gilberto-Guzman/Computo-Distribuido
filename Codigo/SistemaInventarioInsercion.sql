USE SistemaInventario;
-- Insertar datos en la tabla Empresas
INSERT INTO Empresas (EmpresaID, NombreEmpresa, Direccion, Telefono)
VALUES
    (1, 'Empresa1', 'Dirección Empresa1', '123-456-7890'),
    (2, 'Empresa2', 'Dirección Empresa2', '987-654-3210');

-- Insertar datos en la tabla Sucursales
INSERT INTO Sucursales (SucursalID, EmpresaID, NombreSucursal, Direccion, Telefono)
VALUES
    (1, 1, 'Sucursal A', 'Dirección Sucursal A', '111-222-3333'),
    (2, 1, 'Sucursal B', 'Dirección Sucursal B', '444-555-6666'),
    (3, 2, 'Sucursal C', 'Dirección Sucursal C', '777-888-9999');

-- Insertar datos en la tabla Proveedores
INSERT INTO Proveedores (ProveedorID, NombreProveedor, Direccion, Telefono)
VALUES
    (1, 'Proveedor1', 'Dirección Proveedor1', '555-111-2222'),
    (2, 'Proveedor2', 'Dirección Proveedor2', '999-888-7777');

-- Insertar datos en la tabla Articulos
INSERT INTO Articulos (ArticuloID, NombreArticulo, PrecioUnitario, StockMinimo, ProveedorID)
VALUES
    (1, 'Articulo1', 10.99, 50, 1),
    (2, 'Articulo2', 25.50, 30, 2);

-- Insertar datos en la tabla Inventario
INSERT INTO Inventario (InventarioID, ArticuloID, SucursalID, Cantidad, FechaEntrada, FechaSalida)
VALUES
    (1, 1, 1, 100, '2024-01-18', NULL),
    (2, 2, 2, 20, '2024-01-17', NULL),
    (3, 1, 3, 50, '2024-01-16', '2024-01-18');
