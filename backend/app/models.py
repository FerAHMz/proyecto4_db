from sqlalchemy import Column, Integer, String, ForeignKey, Enum, Date, Text, Float, Table, Boolean, Numeric
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
import enum

Base = declarative_base()

# Enums personalizados
class EstadoFrutaType(enum.Enum):
    DISPONIBLE = "Disponible"
    CONSUMIDA = "Consumida"
    DESCONOCIDA = "Desconocida"

class NivelHakiType(str, enum.Enum):
    BASICO = "Básico"
    INTERMEDIO = "Intermedio"
    AVANZADO = "Avanzado"
    DESPERTADO = "Despertado"


class TipoZoanType(enum.Enum):
    NORMAL = "Normal"
    ANTIGUA = "Antigua"
    MITICA = "Mítica"

class NivelHakiType(enum.Enum):
    BASICO = "Básico"
    INTERMEDIO = "Intermedio"
    AVANZADO = "Avanzado"
    DESPERTADO = "Despertado"

class SexoType(enum.Enum):
    M = "M"
    F = "F"

class EstadoPersonajeType(enum.Enum):
    VIVO = "Vivo"
    MUERTO = "Muerto"
    DESCONOCIDO = "Desconocido"

class EstadoTripulacionType(enum.Enum):
    ACTIVA = "Activa"
    DISUELTA = "Disuelta"
    DESCONOCIDA = "Desconocida"

class TipoUbicacionType(enum.Enum):
    ISLA = "Isla"
    ARCHIPIELAGO = "Archipiélago"
    MAR = "Mar"
    PAIS = "País"

class RegionType(enum.Enum):
    EAST_BLUE = "East Blue"
    WEST_BLUE = "West Blue"
    NORTH_BLUE = "North Blue"
    SOUTH_BLUE = "South Blue"
    GRAND_LINE = "Grand Line"
    NEW_WORLD = "New World"

class TipoDebilidadType(enum.Enum):
    AGUA = "Agua"
    MAR = "Mar"
    KAIROSEKI = "Kairoseki"
    HAKI = "Haki"
    OTRA = "Otra"

class ImportanciaArcoType(enum.Enum):
    FILLER = "Filler"
    CANON = "Canon"
    ESPECIAL = "Especial"

class RelevanciaTipo(enum.Enum):
    PROTAGONISTA = "Protagonista"
    SECUNDARIA = "Secundaria"
    MENCIONADA = "Mencionada"

# Modelos
class FrutaDiablo(Base):
    __tablename__ = 'fruta_diablo'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(100), nullable=False, unique=True)
    descripcion = Column(Text)
    apariencia = Column(String(200))
    fecha_descubrimiento = Column(Date)
    estado = Column(Enum(EstadoFrutaType, native_enum=False), nullable=False)
    id_tipo_fruta = Column(Integer, ForeignKey('tipo_fruta.id'), nullable=False)
    id_zoat = Column(Integer, ForeignKey('variacion_zoan.id'))

class TipoFruta(Base):
    __tablename__ = 'tipo_fruta'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(50), nullable=False, unique=True)
    descripcion = Column(Text)
    caracteristicas_principales = Column(String(200))

class VariacionZoan(Base):
    __tablename__ = 'variacion_zoan'
    
    id = Column(Integer, primary_key=True)
    tipo = Column(Enum(TipoZoanType), nullable=False, unique=True)
    descripcion = Column(Text)

class Habilidad(Base):
    __tablename__ = 'habilidad'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(100), nullable=False, unique=True)
    descripcion = Column(Text)

class FrutaHabilidad(Base):
    __tablename__ = 'fruta_habilidad'
    
    id = Column(Integer, primary_key=True)
    id_fruta = Column(Integer, ForeignKey('fruta_diablo.id'), nullable=False)
    id_habilidad = Column(Integer, ForeignKey('habilidad.id'), nullable=False)
    nivel_manifestacion = Column(
        Enum(NivelHakiType, native_enum=False, values_callable=lambda x: [e.value for e in x]),
        nullable=False
    )


class Personaje(Base):
    __tablename__ = 'personaje'

    id = Column(Integer, primary_key=True)
    nombre = Column(String(100), nullable=False)
    apodo = Column(String(100))
    fecha_nacimiento = Column(Date)
    sexo = Column(Enum(SexoType), nullable=False)
    estado = Column(Enum(EstadoPersonajeType, native_enum=False), nullable=False)
    id_ocupacion = Column(Integer, ForeignKey('ocupacion.id'), nullable=False)

    usuario_fruta = relationship("UsuarioFruta", backref="personaje")
    haki_usuario = relationship("HakiUsuarios", backref="personaje")
    recompensas = relationship("Recompensa", backref="personaje")
    ocupacion = relationship("Ocupacion", backref="personajes")




class UsuarioFruta(Base):
    __tablename__ = 'usuario_fruta'
    
    id = Column(Integer, primary_key=True)
    id_personaje = Column(Integer, ForeignKey('personaje.id'), nullable=False)
    id_fruta = Column(Integer, ForeignKey('fruta_diablo.id'), nullable=False)
    episodio = Column(Integer, nullable=False)
    fruta = relationship("FrutaDiablo", backref="usuarios")


class HistorialUsuario(Base):
    __tablename__ = 'historial_usuario'
    
    id = Column(Integer, primary_key=True)
    id_personaje = Column(Integer, ForeignKey('personaje.id'), nullable=False)
    id_fruta = Column(Integer, ForeignKey('fruta_diablo.id'), nullable=False)
    fecha_inicio = Column(Date, nullable=False)
    fecha_fin = Column(Date)
    motivo_fin = Column(String(100))

class Tripulacion(Base):
    from sqlalchemy import Enum as SqlEnum
    __tablename__ = 'tripulacion'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(100), nullable=False, unique=True)
    bandera = Column(String(200))
    id_capitan = Column(Integer, ForeignKey('personaje.id'), nullable=False)
    id_ubicacion_base = Column(Integer, ForeignKey('ubicacion.id'))
    estado = Column(
    SqlEnum(
        EstadoTripulacionType,
        native_enum=False,
        values_callable=lambda enum_cls: [e.value for e in enum_cls]
    ),
    nullable=False
)
    

class PersonajeTripulacion(Base):
    __tablename__ = 'personaje_tripulacion'
    
    id = Column(Integer, primary_key=True)
    id_personaje = Column(Integer, ForeignKey('personaje.id'), nullable=False)
    id_tripulacion = Column(Integer, ForeignKey('tripulacion.id'), nullable=False)
    cargo = Column(String(50), nullable=False)

class Ubicacion(Base):
    __tablename__ = 'ubicacion'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(100), nullable=False)
    tipo = Column(Enum(TipoUbicacionType), nullable=False)
    region = Column(Enum(RegionType), nullable=False)

class Ocupacion(Base):
    __tablename__ = 'ocupacion'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(50), nullable=False, unique=True)
    descripcion = Column(Text)

class Recompensa(Base):
    __tablename__ = 'recompensa'
    
    id = Column(Integer, primary_key=True)
    id_personaje = Column(Integer, ForeignKey('personaje.id'), nullable=False)
    cantidad = Column(Numeric(15,2), nullable=False)
    fecha_emision = Column(Date, nullable=False)
    motivo = Column(Text)
    activa = Column(Boolean, nullable=False)

class DebilidadFruta(Base):
    __tablename__ = 'debilidad_fruta'
    
    id = Column(Integer, primary_key=True)
    id_fruta = Column(Integer, ForeignKey('fruta_diablo.id'), nullable=False)
    tipo = Column(Enum(TipoDebilidadType), nullable=False)
    descripcion = Column(Text)

class ArcoHistoria(Base):
    __tablename__ = 'arco_historia'
    
    id = Column(Integer, primary_key=True)
    nombre = Column(String(100), nullable=False)
    episodio_inicio = Column(Integer, nullable=False)
    episodio_fin = Column(Integer, nullable=False)
    descripcion = Column(Text)
    importancia = Column(Enum(ImportanciaArcoType), nullable=False)

class FrutaArco(Base):
    __tablename__ = 'fruta_arco'
    
    id = Column(Integer, primary_key=True)
    id_fruta = Column(Integer, ForeignKey('fruta_diablo.id'), nullable=False)
    id_arco = Column(Integer, ForeignKey('arco_historia.id'), nullable=False)
    relevancia = Column(Enum(RelevanciaTipo), nullable=False)

class HakiUsuarios(Base):
    __tablename__ = 'haki_usuarios'
    
    id = Column(Integer, primary_key=True)
    id_personaje = Column(Integer, ForeignKey('personaje.id'), nullable=False)
    tipo = Column(String, nullable=False)
    nivel = Column(String, nullable=False)

class PersonajeIndexView(Base):
    __tablename__ = 'vw_personajes_index'
    __table_args__ = {'info': dict(is_view=True)}

    id = Column(Integer, primary_key=True)
    nombre = Column(String)
    apodo = Column(String)
    estado = Column(Enum(EstadoPersonajeType))
    ocupacion_nombre = Column(String)

class FrutaDiabloIndexView(Base):
    __tablename__ = 'vw_frutas_index'
    __table_args__ = {'extend_existing':True}

    id = Column(Integer, primary_key=True)
    nombre = Column(String)
    estado = Column(Enum(EstadoFrutaType))
    tipo_fruta_nombre = Column(String)


    