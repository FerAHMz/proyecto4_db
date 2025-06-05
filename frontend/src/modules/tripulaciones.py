import streamlit as st
import pandas as pd
import requests
from utils.layout import exportar_csv

def mostrar():
    st.title("🏴‍☠️ Reporte Tripulaciones")

    try:
        response = requests.get("http://backend:8502/reportes/tripulaciones/avanzado")
        response.raise_for_status()
        data = response.json()

        if not data:
            st.warning("No se encontraron resultados.")
            return

        df = pd.DataFrame(data)

        st.markdown("### Filtros")

        estado = st.selectbox("Estado", ["Todos"] + sorted(df["estado"].dropna().unique().tolist()))
        region = st.selectbox("Región base", ["Todos"] + sorted(df["ubicacion_base"].dropna().unique().tolist()))
        min_miembros = st.slider(" Miembros mínimos", 0, int(df["cantidad_miembros"].max()), 0)
        min_usuarios = st.slider(" Usuarios de fruta mínimos", 0, int(df["usuarios_fruta"].max()), 0)
        tiene_ubicacion = st.checkbox("Solo con ubicación base definida")

        df_filtrado = df.copy()
        if estado != "Todos":
            df_filtrado = df_filtrado[df_filtrado["estado"] == estado]
        if region != "Todos":
            df_filtrado = df_filtrado[df_filtrado["ubicacion_base"] == region]
        if tiene_ubicacion:
            df_filtrado = df_filtrado[df_filtrado["ubicacion_base"].notna()]
        df_filtrado = df_filtrado[df_filtrado["cantidad_miembros"] >= min_miembros]
        df_filtrado = df_filtrado[df_filtrado["usuarios_fruta"] >= min_usuarios]

        st.markdown("### Resultados")
        st.dataframe(df_filtrado)
        exportar_csv(df_filtrado, "reporte_tripulaciones.csv")

    except requests.RequestException:
        st.error("No se pudo obtener el reporte. Verifica la conexión con el backend.")
