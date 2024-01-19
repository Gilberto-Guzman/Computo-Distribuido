CREATE DATABASE SistemaInventario;
USE SistemaInventario;
-- Creación de tablas
CREATE TABLE Empresas (
    EmpresaID INT PRIMARY KEY,
    NombreEmpresa NVARCHAR(100),
    Direccion NVARCHAR(255),
    Telefono NVARCHAR(20)
);

CREATE TABLE Sucursales (
    SucursalID INT PRIMARY KEY,
    EmpresaID INT FOREIGN KEY REFERENCES Empresas(EmpresaID),
    NombreSucursal NVARCHAR(100),
    Direccion NVARCHAR(255),
    Telefono NVARCHAR(20)
);

CREATE TABLE Proveedores (
    ProveedorID INT PRIMARY KEY,
    NombreProveedor NVARCHAR(100),
    Direccion NVARCHAR(255),
    Telefono NVARCHAR(20)
);

CREATE TABLE Articulos (
    ArticuloID INT PRIMARY KEY,
    NombreArticulo NVARCHAR(100),
    PrecioUnitario DECIMAL(10, 2),
    StockMinimo INT,
    ProveedorID INT FOREIGN KEY REFERENCES Proveedores(ProveedorID)
);

CREATE TABLE Inventario (
    InventarioID INT PRIMARY KEY,
    ArticuloID INT FOREIGN KEY REFERENCES Articulos(ArticuloID),
    SucursalID INT FOREIGN KEY REFERENCES Sucursales(SucursalID),
    Cantidad INT,
    FechaEntrada DATE,
    FechaSalida DATE
);
