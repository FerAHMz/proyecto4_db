CREATE VIEW vw_personajes_index AS
SELECT
    p.id,
    p.nombre,
    p.apodo,
    p.estado,
    o.nombre AS ocupacion_nombre
FROM
    personaje p
LEFT JOIN
    ocupacion o ON p.id_ocupacion = o.id;

CREATE VIEW vw_frutas_index AS
SELECT
    fd.id,
    fd.nombre,
    fd.estado,
    tfd.nombre AS tipo_fruta_nombre
FROM
    fruta_diablo fd
LEFT JOIN
    tipo_fruta tfd ON fd.id_tipo_fruta = tfd.id;