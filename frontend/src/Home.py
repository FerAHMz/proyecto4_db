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
from pages import frutas, personajes, tripulaciones, ranking_poder

st.set_page_config(page_title="Sistema One Piece", layout="wide")
st.title("Sistema de Reportes - Frutas del Diablo")

menu = st.sidebar.radio("Selecciona una sección", ["Frutas", "Personajes", "Tripulaciones", "Ranking de Poder"])

if menu == "Frutas":
    frutas.mostrar()
elif menu == "Personajes":
    personajes.mostrar()
elif menu == "Tripulaciones":
    tripulaciones.mostrar()
elif menu == "Ranking de Poder":
    ranking_poder.mostrar()
