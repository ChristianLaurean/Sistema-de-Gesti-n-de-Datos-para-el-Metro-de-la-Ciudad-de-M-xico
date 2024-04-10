-- Usuario_desarrollador
CREATE USER usuario_desarrollador WITH PASSWORD 'Password';

-- Creo el rol de desarrollador
CREATE ROLE desarrollador;

-- Otorgo los permisos al rol de desarrollador
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMP, EXECUTE, SELECT ON ALL TABLES IN SCHEMA public
    TO desarrollador;

-- Asigno el rol de desarrollador a un usuario
GRANT desarrollador TO usuario_desarrollador;


-- Usuario para el área de análisis de datos
CREATE USER usuario_analista WITH PASSWORD 'Password';

-- Rol de analista de datos
CREATE ROLE analistas_de_datos;

-- Otorgo los permisos al rol de analistas de datos
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMP, EXECUTE, SELECT ON ALL TABLES IN SCHEMA public
    TO analistas_de_datos;

-- Asigno el rol de analista de datos a un usuario
GRANT analistas_de_datos TO usuario_analista;
