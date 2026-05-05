-- Crear base de datos
CREATE DATABASE IF NOT EXISTS app_login
 DEFAULT CHARACTER SET utf8mb4
 DEFAULT COLLATE utf8mb4_unicode_ci;
USE app_login;
-- Tabla de usuarios con campo BLOB para la foto
CREATE TABLE IF NOT EXISTS usuarios (
 id INT NOT NULL AUTO_INCREMENT,
 nombre VARCHAR(100) NOT NULL,
 apellido VARCHAR(100) NOT NULL,
 email VARCHAR(150) NOT NULL UNIQUE,
 usuario VARCHAR(60) NOT NULL UNIQUE,
 contrasena VARCHAR(255) NOT NULL,
 foto MEDIUMBLOB, -- imagen almacenada como bytes
 fecha_reg DATETIME DEFAULT CURRENT_TIMESTAMP,
 activo TINYINT(1) DEFAULT 1,
 PRIMARY KEY (id)
);
-- Usuario de prueba (contraseña: admin123)
INSERT INTO usuarios (nombre, apellido, email, usuario, contrasena)
VALUES ('Admin', 'Sistema', 'admin@demo.com', 'admin', 'admin123');
SELECT * FROM usuarios;
