"""
Endpoints de la API:
- Rutas para frutas
- Rutas para personajes
- Rutas para tripulaciones
- Rutas para reportes
- Validaciones y manejo de errores
"""
from fastapi import FastAPI, Depends, HTTPException, Query
from sqlalchemy.orm import Session
from typing import List, Optional
from . import crud, models, schemas
from .database import SessionLocal, engine, get_db

# Crear las tablas
models.Base.metadata.create_all(bind=engine)

app = FastAPI(
    title="One Piece Database API",
    description="API para gestionar el universo de One Piece",
    version="1.0.0"
)

# ========== ENDPOINT RAÍZ ==========
@app.get("/")
def read_root():
    """Endpoint raíz de la API"""
    return {
        "message": "One Piece Database API",
        "version": "1.0.0",
        "status": "funcionando",
        "endpoints": {
            "docs": "/docs",
            "personajes": "/personajes/",
            "frutas": "/frutas/",
            "reportes": "/reportes/"
        }
    }

# ========== ENDPOINTS PARA PERSONAJES ==========
@app.post("/personajes/", response_model=schemas.PersonajePublic)
def create_personaje(
    personaje: schemas.PersonajeCreate,
    db: Session = Depends(get_db)
):
    return crud.create_personaje(db=db, personaje=personaje)

@app.get("/personajes/", response_model=List[schemas.PersonajePublic])
def read_personajes(
    skip: int = 0,
    limit: int = Query(default=100, le=100),
    nombre: Optional[str] = None,
    estado: Optional[str] = None,
    db: Session = Depends(get_db)
):
    personajes = crud.get_personajes(
        db, skip=skip, limit=limit, nombre=nombre, estado=estado
    )
    return personajes

@app.get("/personajes/", response_model=List[schemas.PersonajeIndex])
def read_personajes(
    skip: int = 0,
    limit: int = Query(default=100, le=100),
    nombre: Optional[str] = None,
    estado: Optional[str] = None,
    db: Session = Depends(get_db)
):
    personajes = crud.get_personajes(
        db, skip=skip, limit=limit, nombre=nombre, estado=estado
    )
    return personajes

@app.patch("/personajes/{personaje_id}", response_model=schemas.PersonajePublic)
def update_personaje(
    personaje_id: int,
    personaje: schemas.PersonajeUpdate,
    db: Session = Depends(get_db)
):
    db_personaje = crud.update_personaje(db, personaje_id, personaje)
    if db_personaje is None:
        raise HTTPException(status_code=404, detail="Personaje no encontrado")
    return db_personaje

@app.delete("/personajes/{personaje_id}")
def delete_personaje(personaje_id: int, db: Session = Depends(get_db)):
    success = crud.delete_personaje(db, personaje_id)
    if not success:
        raise HTTPException(status_code=404, detail="Personaje no encontrado")
    return {"message": "Personaje eliminado exitosamente"}

# ========== ENDPOINTS PARA FRUTAS DEL DIABLO ==========
@app.post("/frutas/", response_model=schemas.FrutaDiabloPublic)
def create_fruta_diablo(
    fruta: schemas.FrutaDiabloCreate,
    db: Session = Depends(get_db)
):
    return crud.create_fruta_diablo(db=db, fruta=fruta)

@app.get("/frutas/", response_model=List[schemas.FrutaDiabloIndex])
def read_frutas_diablo(
    skip: int = 0,
    limit: int = Query(default=100, le=100),
    nombre: Optional[str] = None,
    estado: Optional[str] = None,
    tipo_fruta_id: Optional[int] = None,
    db: Session = Depends(get_db)
):
    frutas = crud.get_frutas_diablo(
        db, skip=skip, limit=limit,
        nombre=nombre, estado=estado, tipo_fruta_id=tipo_fruta_id
    )
    return frutas

@app.get("/frutas/{fruta_id}", response_model=schemas.FrutaDiabloPublic)
def read_fruta_diablo(fruta_id: int, db: Session = Depends(get_db)):
    db_fruta = crud.get_fruta_diablo(db, fruta_id=fruta_id)
    if db_fruta is None:
        raise HTTPException(status_code=404, detail="Fruta del diablo no encontrada")
    return db_fruta

@app.patch("/frutas/{fruta_id}", response_model=schemas.FrutaDiabloPublic)
def update_fruta_diablo(
    fruta_id: int,
    fruta: schemas.FrutaDiabloUpdate,
    db: Session = Depends(get_db)
):
    db_fruta = crud.update_fruta_diablo(db, fruta_id, fruta)
    if db_fruta is None:
        raise HTTPException(status_code=404, detail="Fruta del diablo no encontrada")
    return db_fruta

@app.delete("/frutas/{fruta_id}")
def delete_fruta_diablo(fruta_id: int, db: Session = Depends(get_db)):
    success = crud.delete_fruta_diablo(db, fruta_id)
    if not success:
        raise HTTPException(status_code=404, detail="Fruta del diablo no encontrada")
    return {"message": "Fruta del diablo eliminada exitosamente"}


# ========== ENDPOINT DE SALUD ==========
@app.get("/health")
def health_check():
    """Verificar que la API esté funcionando"""
    return {"status": "healthy", "message": "API funcionando correctamente"}