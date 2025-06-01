--Función para calcular el poder total de un personaje
CREATE OR REPLACE FUNCTION calcular_poder_personaje(id_personaje_param INTEGER)
RETURNS DECIMAL AS $$
DECLARE
    poder_total DECIMAL := 0;
    recompensa DECIMAL := 0;
    nivel_haki INTEGER := 0;
    nivel_frutas INTEGER := 0;
BEGIN
    --Acá se obtiene la recompensa más alta del personaje
    SELECT COALESCE(MAX(cantidad), 0) INTO recompensa
    FROM recompensa
    WHERE id_personaje = id_personaje_param AND activa = true;
    
    --Se calcula el nivel de haki
    SELECT COALESCE(SUM(
        CASE nivel 
            WHEN 'Básico' THEN 100 
            WHEN 'Intermedio' THEN 300 
            WHEN 'Avanzado' THEN 600 
            WHEN 'Despertado' THEN 1000 
            ELSE 0 
        END), 0) INTO nivel_haki
    FROM haki_usuarios
    WHERE id_personaje = id_personaje_param;
    
    --Calculamos el nivel de la fruta
    SELECT COALESCE(SUM(
        CASE fh.nivel_manifestacion
            WHEN 'Básico' THEN 200 
            WHEN 'Intermedio' THEN 500 
            WHEN 'Avanzado' THEN 800 
            WHEN 'Despertado' THEN 1500 
            ELSE 0 
        END), 0) INTO nivel_frutas
    FROM usuario_fruta uf
    JOIN fruta_habilidad fh ON uf.id_fruta = fh.id_fruta
    WHERE uf.id_personaje = id_personaje_param;
    
    --Calculo para el poder total (recompensa en millones + habilidades)
    poder_total := (recompensa / 1000000) + nivel_haki + nivel_frutas;
    
    RETURN poder_total;
END;
$$ LANGUAGE plpgsql;


--Función para obtener estadísticas de la tripulación por región
CREATE OR REPLACE FUNCTION obtener_estadisticas_tripulaciones_por_region()
RETURNS TABLE (
    region VARCHAR,
    total_tripulaciones BIGINT,
    tripulaciones_activas BIGINT,
    promedio_recompensas DECIMAL(15,2),
    fruta_mas_comun VARCHAR,
    personaje_mas_poderoso VARCHAR,
    poder_maximo DECIMAL(15,2)
) AS $$
BEGIN
    RETURN QUERY
    WITH 
    --Tripulaciones por región
    tripulaciones_region AS (
        SELECT 
            u.region,
            t.id,
            t.nombre,
            t.estado
        FROM 
            tripulacion t
        JOIN 
            ubicacion u ON t.id_ubicacion_base = u.id
    ),
    
    --Recompensas por tripulación
    recompensas_tripulacion AS (
        SELECT 
            pt.id_tripulacion,
            SUM(r.cantidad) as total_recompensa
        FROM 
            personaje_tripulacion pt
        JOIN 
            recompensa r ON pt.id_personaje = r.id_personaje
        WHERE 
            r.activa = true
        GROUP BY 
            pt.id_tripulacion
    ),
    
    --Frutas por tripulación
    frutas_tripulacion AS (
        SELECT 
            pt.id_tripulacion,
            fd.nombre as fruta_nombre,
            COUNT(*) as cantidad
        FROM 
            personaje_tripulacion pt
        JOIN 
            usuario_fruta uf ON pt.id_personaje = uf.id_personaje
        JOIN 
            fruta_diablo fd ON uf.id_fruta = fd.id
        GROUP BY 
            pt.id_tripulacion, fd.nombre
    ),
    
    --Personajes más poderosos por tripulación
    poder_personajes AS (
        SELECT 
            pt.id_tripulacion,
            p.id as personaje_id,
            p.nombre as personaje_nombre,
            calcular_poder_personaje(p.id) as poder
        FROM 
            personaje_tripulacion pt
        JOIN 
            personaje p ON pt.id_personaje = p.id
    )
    
    SELECT 
        tr.region,
        COUNT(DISTINCT tr.id)::BIGINT as total_tripulaciones,
        COUNT(DISTINCT CASE WHEN tr.estado = 'Activa' THEN tr.id END)::BIGINT as tripulaciones_activas,
        COALESCE(AVG(rt.total_recompensa), 0) as promedio_recompensas,
        (
            SELECT ft.fruta_nombre
            FROM frutas_tripulacion ft
            WHERE ft.id_tripulacion = ANY(ARRAY_AGG(tr.id))
            GROUP BY ft.fruta_nombre
            ORDER BY SUM(ft.cantidad) DESC
            LIMIT 1
        ) as fruta_mas_comun,
        (
            SELECT pp.personaje_nombre
            FROM poder_personajes pp
            WHERE pp.id_tripulacion = ANY(ARRAY_AGG(tr.id))
            ORDER BY pp.poder DESC
            LIMIT 1
        ) as personaje_mas_poderoso,
        (
            SELECT MAX(pp.poder)
            FROM poder_personajes pp
            WHERE pp.id_tripulacion = ANY(ARRAY_AGG(tr.id))
        ) as poder_maximo
    FROM 
        tripulaciones_region tr
    LEFT JOIN 
        recompensas_tripulacion rt ON tr.id = rt.id_tripulacion
    GROUP BY 
        tr.region
    ORDER BY 
        total_tripulaciones DESC;
END;
$$ LANGUAGE plpgsql;