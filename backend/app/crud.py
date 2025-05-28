"""
Operaciones CRUD para cada modelo:
- Crear registros
- Leer registros (individual y listados)
- Actualizar registros
- Eliminar registros
- Queries específicas para reportes
"""

from sqlalchemy.orm import Session
from sqlalchemy import select, and_, or_
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

