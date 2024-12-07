CREATE DATABASE IF NOT EXISTS sistpeliculas;
USE sistpeliculas;


CREATE TABLE peliculas (
    idPelicula INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único
    nomPelicula VARCHAR(255) NOT NULL,        -- Nombre de la película
    formatoPelicula VARCHAR(100) NOT NULL,    -- Formato de la película (e.g., VHS, DVD, Blu-ray, Digital)
    categoriaPelicula VARCHAR(100) NOT NULL   -- Categoría de la película (e.g., Acción, Drama, Comedia)
);
CREATE TABLE Cliente (
    Rut VARCHAR(15) PRIMARY KEY,       -- RUT del cliente (único identificador)
    nombre VARCHAR(100) NOT NULL,      -- Nombre del cliente
    apPaterno VARCHAR(100) NOT NULL,   -- Apellido paterno del cliente
    apMaterno VARCHAR(100) NOT NULL,   -- Apellido materno del cliente
    telefono VARCHAR(20),              -- Teléfono del cliente
    correo VARCHAR(150),               -- Correo electrónico del cliente
    direccion VARCHAR(255)             -- Dirección del cliente
);
CREATE TABLE ventas (
    idVenta INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la venta
    cliente VARCHAR(15) NOT NULL,           -- Identificador del cliente (puede relacionarse con la tabla Cliente)
    producto VARCHAR(255) NOT NULL,         -- Nombre o descripción del producto
    precioNeto DECIMAL(10, 2) NOT NULL,     -- Precio neto del producto (antes de impuestos)
    precioTotal DECIMAL(10, 2) NOT NULL     -- Precio total de la venta (incluyendo impuestos)
);
