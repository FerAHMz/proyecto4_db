--Triggeer que actualiza el estado de fruta cuando se asigna a un personaje
CREATE OR REPLACE FUNCTION actualizar_estado_fruta()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE fruta_diablo
    SET estado = 'CONSUMIDA'
    WHERE id = NEW.id_fruta;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_actualizar_estado_fruta
AFTER INSERT ON usuario_fruta
FOR EACH ROW
EXECUTE FUNCTION actualizar_estado_fruta();


--Trigger para registrar cambio de tripulación en historial
CREATE OR REPLACE FUNCTION registrar_cambio_tripulacion()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_tripulacion <> OLD.id_tripulacion THEN
        INSERT INTO historial_usuario (id_personaje, id_fruta, fecha_inicio, motivo_fin)
        SELECT OLD.id_personaje, uf.id_fruta, NOW(), 'Cambio de tripulación'
        FROM usuario_fruta uf
        WHERE uf.id_personaje = OLD.id_personaje;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER trg_registrar_cambio_tripulacion
AFTER UPDATE ON personaje_tripulacion
FOR EACH ROW
EXECUTE FUNCTION registrar_cambio_tripulacion();


--Trigger que valida fecha de descubrimiento de fruta
CREATE OR REPLACE FUNCTION validar_fecha_descubrimiento()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.fecha_descubrimiento > CURRENT_DATE THEN
        RAISE EXCEPTION 'La fecha de descubrimiento no puede ser en el futuro';
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validar_fecha_descubrimiento
BEFORE INSERT OR UPDATE ON fruta_diablo
FOR EACH ROW
EXECUTE FUNCTION validar_fecha_descubrimiento();