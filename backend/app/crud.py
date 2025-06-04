"""
Operaciones CRUD para cada modelo:
- Crear registros
- Leer registros (individual y listados)
- Actualizar registros
- Eliminar registros
- Queries específicas para reportes
"""

from sqlalchemy.orm import Session
from sqlalchemy import func,select, and_, or_
from typing import List, Optional
from . import models, schemas

def create_personaje(db: Session, personaje: schemas.PersonajeCreate) -> models.Personaje:
    """Crear un nuevo personaje"""
    db_personaje = models.Personaje(**personaje.model_dump())
    db.add(db_personaje)
    db.commit()
    db.refresh(db_personaje)
    return db_personaje

def get_personaje(db: Session, personaje_id: int) -> Optional[models.Personaje]:
    """Obtener un personaje por ID"""
    return db.query(models.Personaje).filter(models.Personaje.id == personaje_id).first()

def get_personajes(
    db: Session,
    skip: int = 0,
    limit: int = 100,
    nombre: Optional[str] = None,
    estado: Optional[str] = None
) -> List[models.PersonajeIndexView]:
    """Obtener lista de personajes desde la vista de índice"""
    query = db.query(models.PersonajeIndexView)

    if nombre:
        query = query.filter(models.PersonajeIndexView.nombre.ilike(f"%{nombre}%"))
    if estado:
        try:
            estado_enum = schemas.EstadoPersonajeType[estado.upper()]
            query = query.filter(models.PersonajeIndexView.estado == estado_enum)
        except KeyError:
            pass
    return query.offset(skip).limit(limit).all()

def update_personaje(
    db: Session, 
    personaje_id: int, 
    personaje_update: schemas.PersonajeUpdate
) -> Optional[models.Personaje]:
    """Actualizar un personaje"""
    db_personaje = get_personaje(db, personaje_id)
    if not db_personaje:
        return None
    update_data = personaje_update.model_dump(exclude_unset=True)
    for field, value in update_data.items():
        setattr(db_personaje, field, value)
    
    db.commit()
    db.refresh(db_personaje)
    return db_personaje

def delete_personaje(db: Session, personaje_id: int) -> bool:
    """Eliminar un personaje"""
    db_personaje = get_personaje(db, personaje_id)
    if not db_personaje:
        return False
    
    db.delete(db_personaje)
    db.commit()
    return True


def create_fruta_diablo(db: Session, fruta: schemas.FrutaDiabloCreate) -> models.FrutaDiablo:
    """Crear una nueva fruta del diablo"""
    db_fruta = models.FrutaDiablo(**fruta.model_dump())
    db.add(db_fruta)
    db.commit()
    db.refresh(db_fruta)
    return db_fruta

def get_fruta_diablo(db: Session, fruta_id: int) -> Optional[models.FrutaDiablo]:
    """Obtener una fruta del diablo por ID"""
    return db.query(models.FrutaDiablo).filter(models.FrutaDiablo.id == fruta_id).first()

def get_frutas_diablo( 
    db: Session,
    skip: int = 0,
    limit: int = 100,
    nombre: Optional[str] = None,
    estado: Optional[str] = None,
    tipo_fruta_id: Optional[int] = None
) -> List[models.FrutaDiabloIndexView]:
    """Obtener lista de frutas desde la vista de índice"""
    query = db.query(models.FrutaDiabloIndexView)

    if nombre:
        query = query.filter(models.FrutaDiabloIndexView.nombre.ilike(f"%{nombre}%"))
    if estado:
        try:
            estado_enum = schemas.EstadoFrutaType[estado.upper()]
            query = query.filter(models.FrutaDiabloIndexView.estado == estado_enum)
        except KeyError:
            pass
    return query.offset(skip).limit(limit).all()

def update_fruta_diablo(
    db: Session,
    fruta_id: int,
    fruta_update: schemas.FrutaDiabloUpdate
) -> Optional[models.FrutaDiablo]:
    """Actualizar una fruta del diablo"""
    db_fruta = get_fruta_diablo(db, fruta_id)
    if not db_fruta:
        return None
    
    update_data = fruta_update.model_dump(exclude_unset=True)
    for field, value in update_data.items():
        setattr(db_fruta, field, value)
    
    db.commit()
    db.refresh(db_fruta)
    return db_fruta

def delete_fruta_diablo(db: Session, fruta_id: int) -> bool:
    """Eliminar una fruta del diablo"""
    db_fruta = get_fruta_diablo(db, fruta_id)
    if not db_fruta:
        return False
    
    db.delete(db_fruta)
    db.commit()
    return True


def get_reporte_avanzado_frutas(db: Session) -> List[schemas.ReporteFrutaAvanzado]:
    from sqlalchemy import func

    subquery_habilidades = (
        db.query(
            models.FrutaHabilidad.id_fruta,
            func.count(models.FrutaHabilidad.id_habilidad).label("cantidad_habilidades"),
            func.max(models.FrutaHabilidad.nivel_manifestacion).label("nivel_maximo")
        )
        .group_by(models.FrutaHabilidad.id_fruta)
        .subquery()
    )

    subquery_asociaciones = (
        db.query(models.UsuarioFruta.id_fruta.label("id_fruta_asociada"))
        .distinct()
        .subquery()
    )

    query = (
        db.query(
            models.FrutaDiablo.id,
            models.FrutaDiablo.nombre,
            models.TipoFruta.nombre.label("tipo_fruta_nombre"),
            models.FrutaDiablo.estado,
            func.coalesce(subquery_habilidades.c.cantidad_habilidades, 0).label("cantidad_habilidades"),
            subquery_habilidades.c.nivel_maximo.label("nivel_maximo"),
            func.coalesce(subquery_asociaciones.c.id_fruta_asociada.isnot(None), False).label("esta_asociada")
        )
        .join(models.TipoFruta, models.FrutaDiablo.id_tipo_fruta == models.TipoFruta.id)
        .outerjoin(subquery_habilidades, subquery_habilidades.c.id_fruta == models.FrutaDiablo.id)
        .outerjoin(subquery_asociaciones, subquery_asociaciones.c.id_fruta_asociada == models.FrutaDiablo.id)
    )

    return [
        schemas.ReporteFrutaAvanzado(
            id=fruta.id,
            nombre=fruta.nombre,
            tipo_fruta_nombre=fruta.tipo_fruta_nombre,
            estado=fruta.estado,
            cantidad_habilidades=fruta.cantidad_habilidades,
            nivel_maximo=fruta.nivel_maximo,
            esta_asociada=fruta.esta_asociada
        )
        for fruta in query.all()
    ]

def get_reporte_avanzado_personajes(db: Session):
    personajes = (
        db.query(models.Personaje)
        .outerjoin(models.UsuarioFruta, models.Personaje.id == models.UsuarioFruta.id_personaje)
        .outerjoin(models.FrutaDiablo, models.UsuarioFruta.id_fruta == models.FrutaDiablo.id)
        .outerjoin(models.HakiUsuarios, models.Personaje.id == models.HakiUsuarios.id_personaje)
        .outerjoin(models.Recompensa, models.Personaje.id == models.Recompensa.id_personaje)
        .outerjoin(models.Ocupacion, models.Personaje.id_ocupacion == models.Ocupacion.id)
        .all()
    )

    resultado = []
    for p in personajes:
        fruta = p.usuario_fruta[0].fruta.nombre if p.usuario_fruta else None

        niveles = [h.nivel.lower() for h in p.haki_usuario] if hasattr(p, "haki_usuario") else []
        nivel_general = None
        if any("despertado" in n for n in niveles):
            nivel_general = "Despertado"
        elif any("avanzado" in n for n in niveles):
            nivel_general = "Avanzado"
        elif any("intermedio" in n for n in niveles):
            nivel_general = "Intermedio"

        recompensa = next((float(r.cantidad) for r in getattr(p, "recompensas", []) if r.activa), 0)

        resultado.append({
            "id": p.id,
            "nombre": p.nombre,
            "ocupacion": p.ocupacion.nombre if p.ocupacion else None,
            "fruta": fruta,
            "nivel_general": nivel_general,
            "recompensa": recompensa,
            "estado": p.estado.value if p.estado else None
        })

    return resultado
