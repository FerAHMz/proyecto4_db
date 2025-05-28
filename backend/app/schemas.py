"""
Esquemas Pydantic para:
- Validación de datos
- Serialización de respuestas
- Modelos de entrada/salida
"""

from pydantic import BaseModel, Field
from typing import Optional, List
from datetime import date
from decimal import Decimal
from .models import SexoType, EstadoPersonajeType, EstadoFrutaType

class PersonajeBase(BaseModel):
    nombre: str = Field(..., max_length=100)
    apodo: Optional[str] = Field(None, max_length=100)
    fecha_nacimiento: Optional[date] = None
    sexo: SexoType 
    estado: EstadoPersonajeType
    id_ocupacion: int

class PersonajeCreate(PersonajeBase):
    pass

class PersonajeUpdate(BaseModel):
    nombre: Optional[str] = Field(None, max_length=100)
    apodo: Optional[str] = Field(None, max_length=100)
    fecha_nacimiento: Optional[date] = None
    sexo: Optional[SexoType] = None
    estado: Optional[EstadoPersonajeType] = None
    id_ocupacion: Optional[int] = None

class PersonajePublic(PersonajeBase):
    id: int
    
    class Config:
        from_attributes = True

class FrutaDiabloBase(BaseModel):
    nombre: str = Field(..., max_length=100)
    descripcion: Optional[str] = None
    apariencia: Optional[str] = Field(None, max_length=200)
    fecha_descubrimiento: Optional[date] = None
    estado: EstadoFrutaType
    id_tipo_fruta: int
    id_zoat: Optional[int] = None

class FrutaDiabloCreate(FrutaDiabloBase):
    pass

class FrutaDiabloUpdate(BaseModel):
    nombre: Optional[str] = Field(None, max_length=100)
    descripcion: Optional[str] = None
    apariencia: Optional[str] = Field(None, max_length=200)
    fecha_descubrimiento: Optional[date] = None
    estado: Optional[EstadoFrutaType] = None
    id_tipo_fruta: Optional[int] = None
    id_zoat: Optional[int] = None

class FrutaDiabloPublic(FrutaDiabloBase):
    id: int
    
    class Config:
        from_attributes = True

class RecompensaBase(BaseModel):
    id_personaje: int
    cantidad: Decimal = Field(..., decimal_places=2)
    fecha_emision: date
    motivo: Optional[str] = None
    activa: bool = True

class RecompensaCreate(RecompensaBase):
    pass

class RecompensaUpdate(BaseModel):
    cantidad: Optional[Decimal] = Field(None, decimal_places=2)
    fecha_emision: Optional[date] = None
    motivo: Optional[str] = None
    activa: Optional[bool] = None

class RecompensaPublic(RecompensaBase):
    id: int
    
    class Config:
        from_attributes = True

class PersonajeIndex(BaseModel):
    id: int
    nombre: str
    apodo: Optional[str] = None
    estado: EstadoPersonajeType
    ocupacion_nombre: Optional[str] = None

    class Config:
        orm_mode = True

class FrutaDiabloIndex(BaseModel):
    id: int
    nombre: str
    estado: EstadoFrutaType
    tipo_fruta_nombre: Optional[str] = None

    class Config:
        orm_mode = True