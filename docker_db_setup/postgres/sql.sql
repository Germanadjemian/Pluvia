SQL DE PRUEBA:
-- Crear el tipo ENUM antes de usarlo
CREATE TYPE rol_type AS ENUM ('admin', 'productor');

-- Crear la tabla de usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL,
    contraseÃ±a VARCHAR(255) NOT NULL,
    rol rol_type NOT NULL,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL,
    telefono VARCHAR(15)
);

-- Crear la tabla de campos
CREATE TABLE campo (
    id SERIAL PRIMARY KEY,
    productor_id INT REFERENCES usuarios(id),
    nombre VARCHAR(100),
    ubicacion VARCHAR(100),
    superficie DOUBLE PRECISION  
);

-- Crear la tabla de productores
CREATE TABLE productores (
    id SERIAL PRIMARY KEY,
    id_productor INTEGER REFERENCES usuarios(id) ON DELETE CASCADE,
    id_campo INTEGER REFERENCES campo(id) ON DELETE CASCADE,
    UNIQUE(id_productor, id_campo)
);


-- Crear la tabla de chacras
CREATE TABLE chacras (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_campo INTEGER REFERENCES campo(id) ON DELETE CASCADE
);

-- Crear la tabla de datos de chacras
CREATE TABLE datos_chacra (
    id SERIAL PRIMARY KEY,
    id_chacra INTEGER REFERENCES chacras(id) ON DELETE CASCADE,
    fecha_siembra DATE,
    densidad FLOAT,
    fecha_primera_fertilizacion DATE,
    producto_fertilizador VARCHAR(100),
    cantidad_fertilizador FLOAT,
    fecha_aplicacion_herbicidas DATE,
    producto_herbicida VARCHAR(100),
    cantidad_herbicida FLOAT,
    fecha_emergencia DATE,
    fecha_comienzo_riego DATE,
    fecha_fin_riego DATE,
    fecha_cosecha DATE,
    rendimiento FLOAT
);

-- Crear la tabla de mapas
CREATE TABLE mapas (
    id SERIAL PRIMARY KEY,
    id_campo INTEGER REFERENCES campo(id) ON DELETE CASCADE,
    nombre VARCHAR(100) NOT NULL,
    archivo_kml TEXT NOT NULL,
    archivo_ortomosaico TEXT NULL
);

-- Crear la tabla de puntos georreferenciados
CREATE TABLE puntos_georreferenciados (
    id SERIAL PRIMARY KEY,
    mapa_id INT REFERENCES mapas(id),
    latitud DOUBLE PRECISION,
    longitud DOUBLE PRECISION,
    estado VARCHAR(20) CHECK (estado IN ('pendiente', 'revisado')) DEFAULT 'pendiente',
    feedback TEXT NULL
);