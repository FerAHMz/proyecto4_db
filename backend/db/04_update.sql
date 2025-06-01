--Reglas de validación (CHECK) y valores por defecto (DEFAULT) para mantener la integridad de los datos

ALTER TABLE fruta_diablo
ALTER COLUMN estado SET DEFAULT 'DESCONOCIDA',
ADD CONSTRAINT chk_estado_fruta CHECK (estado IN ('DISPONIBLE', 'CONSUMIDA', 'DESCONOCIDA'));

ALTER TABLE personaje
ALTER COLUMN estado SET DEFAULT 'DESCONOCIDO',
ADD CONSTRAINT chk_estado_personaje CHECK (estado IN ('VIVO', 'MUERTO', 'DESCONOCIDO')),
ADD CONSTRAINT chk_sexo_personaje CHECK (sexo IN ('M', 'F', 'O'));

ALTER TABLE tripulacion
ALTER COLUMN estado SET DEFAULT 'Desconocida',
ADD CONSTRAINT chk_estado_tripulacion CHECK (estado IN ('Activa', 'Disuelta', 'Desconocida'));

ALTER TABLE fruta_habilidad
ADD CONSTRAINT chk_nivel_manifestacion CHECK (nivel_manifestacion IN ('Básico', 'Intermedio', 'Avanzado', 'Despertado'));

ALTER TABLE haki_usuarios
ADD CONSTRAINT chk_tipo_haki CHECK (tipo IN ('Busoshoku', 'Kenbunshoku', 'Haoshoku')),
ADD CONSTRAINT chk_nivel_haki CHECK (nivel IN ('Básico', 'Intermedio', 'Avanzado', 'Despertado'));

ALTER TABLE fruta_arco
ADD CONSTRAINT chk_relevancia CHECK (relevancia IN ('Protagonista', 'Secundaria', 'Mencionada'));