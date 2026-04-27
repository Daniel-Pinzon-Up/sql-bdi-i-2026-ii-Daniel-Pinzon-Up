DROP TABLE IF EXISTS Estudiantes;

CREATE TABLE Estudiantes (
  estudiante_id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE,
  email VARCHAR(150),
  telefono VARCHAR(20),
  direccion VARCHAR(255),
  fecha_registro DATE DEFAULT CURRENT_DATE
);

INSERT INTO Estudiantes (nombre, apellido, fecha_nacimiento, email, telefono, direccion)
VALUES ('Juan', 'Pérez', '1998-05-20', 'juan.perez@mail.com', '555-1234', 'Calle 1, Ciudad A');

INSERT INTO Estudiantes (nombre, apellido, fecha_nacimiento, email, telefono, direccion)
VALUES ('Ana', 'López', '2000-07-15', 'ana.lopez@mail.com', '555-5678', 'Calle 2, Ciudad B');

SELECT * FROM Estudiantes;

UPDATE Estudiantes 
SET telefono = '555-0000' 
WHERE nombre = 'Ana';

DELETE FROM Estudiantes 
WHERE nombre = 'Juan';