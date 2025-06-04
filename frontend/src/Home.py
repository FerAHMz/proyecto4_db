"""
Página principal de Streamlit:
- Layout principal
- Navegación entre secciones
- Filtros globales
- Tabs para:
  * Frutas del Diablo
  * Personajes
  * Reportes
"""

import streamlit as st
from pages import frutas, tripulaciones
import pages.personajes as personajes


st.set_page_config(page_title="Sistema One Piece", layout="wide")
st.title("Sistema de Reportes - Frutas del Diablo")

menu = st.sidebar.radio("Selecciona una sección", ["Frutas", "Personajes", "Tripulaciones", "Ranking de Poder"])

if menu == "Frutas":
    frutas.mostrar()
elif menu == "Personajes":
    personajes.mostrar()
elif menu == "Tripulaciones":
    tripulaciones.mostrar()

