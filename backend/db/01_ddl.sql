-- TABLA: tipo_fruta
CREATE TABLE IF NOT EXISTS tipo_fruta (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  descripcion TEXT,
  caracteristicas_principales VARCHAR(200)
);

-- TABLA: variacion_zoan
CREATE TABLE IF NOT EXISTS variacion_zoan (
  id SERIAL PRIMARY KEY NOT NULL,
  tipo VARCHAR(50) NOT NULL UNIQUE,
  descripcion TEXT
);

-- TABLA: fruta_diablo
CREATE TABLE IF NOT EXISTS fruta_diablo (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion TEXT,
  apariencia VARCHAR(200),
  fecha_descubrimiento DATE,
  estado VARCHAR(20) NOT NULL,
  id_tipo_fruta INTEGER NOT NULL REFERENCES tipo_fruta(id),
  id_zoat INTEGER REFERENCES variacion_zoan(id)
);

-- TABLA: habilidad
CREATE TABLE IF NOT EXISTS habilidad (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion TEXT
);

-- TABLA: fruta_habilidad
CREATE TABLE IF NOT EXISTS fruta_habilidad (
  id SERIAL PRIMARY KEY NOT NULL,
  id_fruta INTEGER NOT NULL REFERENCES fruta_diablo(id),
  id_habilidad INTEGER NOT NULL REFERENCES habilidad(id),
  nivel_manifestacion VARCHAR(20) NOT NULL
);

-- TABLA: ocupacion
CREATE TABLE IF NOT EXISTS ocupacion (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(50) NOT NULL UNIQUE,
  descripcion TEXT
);

-- TABLA: personaje
CREATE TABLE IF NOT EXISTS personaje (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  apodo VARCHAR(100),
  fecha_nacimiento DATE,
  sexo VARCHAR(1) NOT NULL,
  estado VARCHAR(20) NOT NULL,
  id_ocupacion INTEGER NOT NULL REFERENCES ocupacion(id)
);

-- TABLA: usuario_fruta
CREATE TABLE IF NOT EXISTS usuario_fruta (
  id SERIAL PRIMARY KEY NOT NULL,
  id_personaje INTEGER NOT NULL REFERENCES personaje(id),
  id_fruta INTEGER NOT NULL REFERENCES fruta_diablo(id),
  episodio INTEGER NOT NULL
);

-- TABLA: historial_usuario
CREATE TABLE IF NOT EXISTS historial_usuario (
  id SERIAL PRIMARY KEY NOT NULL,
  id_personaje INTEGER NOT NULL REFERENCES personaje(id),
  id_fruta INTEGER NOT NULL REFERENCES fruta_diablo(id),
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE,
  motivo_fin VARCHAR(100)
);

-- TABLA: ubicacion
CREATE TABLE IF NOT EXISTS ubicacion (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  region VARCHAR(50) NOT NULL
);

-- TABLA: tripulacion
CREATE TABLE IF NOT EXISTS tripulacion (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  bandera VARCHAR(200),
  id_capitan INTEGER NOT NULL REFERENCES personaje(id),
  id_ubicacion_base INTEGER REFERENCES ubicacion(id),
  estado VARCHAR(20) NOT NULL
);

-- TABLA: personaje_tripulacion
CREATE TABLE IF NOT EXISTS personaje_tripulacion (
  id SERIAL PRIMARY KEY NOT NULL,
  id_personaje INTEGER NOT NULL REFERENCES personaje(id),
  id_tripulacion INTEGER NOT NULL REFERENCES tripulacion(id),
  cargo VARCHAR(50) NOT NULL
);

-- TABLA: recompensa
CREATE TABLE IF NOT EXISTS recompensa (
  id SERIAL PRIMARY KEY NOT NULL,
  id_personaje INTEGER NOT NULL REFERENCES personaje(id),
  cantidad DECIMAL(15,2) NOT NULL,
  fecha_emision DATE NOT NULL,
  motivo TEXT,
  activa BOOLEAN NOT NULL
);

-- TABLA: debilidad_fruta
CREATE TABLE IF NOT EXISTS debilidad_fruta (
  id SERIAL PRIMARY KEY NOT NULL,
  id_fruta INTEGER NOT NULL REFERENCES fruta_diablo(id),
  tipo VARCHAR(50) NOT NULL,
  descripcion TEXT
);

-- TABLA: arco_historia
CREATE TABLE IF NOT EXISTS arco_historia (
  id SERIAL PRIMARY KEY NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  episodio_inicio INTEGER NOT NULL,
  episodio_fin INTEGER NOT NULL,
  descripcion TEXT,
  importancia VARCHAR(20) NOT NULL
);

-- TABLA: fruta_arco
CREATE TABLE IF NOT EXISTS fruta_arco (
  id SERIAL PRIMARY KEY NOT NULL,
  id_fruta INTEGER NOT NULL REFERENCES fruta_diablo(id),
  id_arco INTEGER NOT NULL REFERENCES arco_historia(id),
  relevancia VARCHAR(20) NOT NULL -- Valores: 'Protagonista', 'Secundaria', 'Mencionada'
);

-- TABLA: haki_usuarios
CREATE TABLE IF NOT EXISTS haki_usuarios (
  id SERIAL PRIMARY KEY NOT NULL,
  id_personaje INTEGER NOT NULL REFERENCES personaje(id),
  tipo VARCHAR NOT NULL,
  nivel VARCHAR NOT NULL
);
