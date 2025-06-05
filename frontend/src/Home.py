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
from modules import frutas, tripulaciones
import modules.personajes as personajes

st.set_page_config(page_title="Sistema One Piece", layout="wide")
st.title("Sistema de Reportes - Frutas del Diablo")

menu = st.sidebar.radio("Selecciona una sección", ["Frutas", "Personajes", "Tripulaciones"])

if menu == "Frutas":
    frutas.mostrar()
elif menu == "Personajes":
    personajes.mostrar()
elif menu == "Tripulaciones":
    tripulaciones.mostrar()
else:
    st.write("## Bienvenido al Sistema One Piece")
    st.write("Selecciona una sección del menú lateral para comenzar.")

