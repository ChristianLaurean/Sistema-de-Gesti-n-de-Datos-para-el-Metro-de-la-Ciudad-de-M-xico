-- Creación de la base de datos
CREATE DATABASE metro_cdmx;

-- Creación de la tabla lineas del metro
CREATE TABLE lines (
    id SERIAL PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    color VARCHAR(15) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla de estaciones del metro
CREATE TABLE stations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla de trenes del metro
CREATE TABLE trains (
    serial_number VARCHAR(10) PRIMARY KEY,
    line_id BIGINT NOT NULL,
    type SMALLINT NOT NULL,
    year INT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (line_id) REFERENCES lines(id)
);

-- Creación de la tabla pivot de lineas y estaciones
CREATE TABLE lines_stations (
    id SERIAL PRIMARY KEY,
    line_id BIGINT NOT NULL,
    station_id BIGINT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (line_id) REFERENCES lines(id),
    FOREIGN KEY (station_id) REFERENCES stations(id)
);

-- Creación de la tabla locations
CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    station_id BIGINT NOT NULL,
    location POINT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (station_id) REFERENCES stations(id)
);

-- Creación de las tablas de conductores
CREATE TABLE drivers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    status BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla que nos ayudara a saber si un conductor esta activo.
CREATE TABLE active_drivers (
    id SERIAL PRIMARY KEY,
    driver_id BIGINT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (driver_id) REFERENCES drivers(id)
);
