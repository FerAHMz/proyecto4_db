import streamlit as st
import requests
import pandas as pd
from utils.layout import exportar_csv

def mostrar():
    st.title("Reporte Avanzado: Personajes")

    try:
        response = requests.get("http://backend:8502/reportes/personajes/avanzado")
        response.raise_for_status()
        data = response.json()

        if not data:
            st.warning("No se encontraron personajes.")
            return

        df = pd.DataFrame(data)

        st.markdown("### Filtros")

        tiene_fruta = st.checkbox(" Tiene fruta del diablo", value=False)

        niveles_haki = st.multiselect(
            "Nivel general de haki",
            options=["Intermedio", "Avanzado", "Despertado"]
        )

        recompensa_min = st.slider(
            " Monto mínimo de recompensa activa",
            0,
            int(df["recompensa"].max() or 0),
            0
        )

        ocupaciones = st.multiselect(
            " Ocupación",
            options=sorted(df["ocupacion"].dropna().unique().tolist())
        )

        estados_disponibles = df["estado"].dropna().unique().tolist()
        estado = st.selectbox(" Estado del personaje", options=["Todos"] + sorted(estados_disponibles))

        # Aplicar filtros
        df_filtrado = df[df["recompensa"] >= recompensa_min]

        if tiene_fruta:
            df_filtrado = df_filtrado[df_filtrado["fruta"].notna()]

        if niveles_haki:
            df_filtrado = df_filtrado[df_filtrado["nivel_general"].isin(niveles_haki)]

        if ocupaciones:
            df_filtrado = df_filtrado[df_filtrado["ocupacion"].isin(ocupaciones)]

        if estado != "Todos":
            df_filtrado = df_filtrado[df_filtrado["estado"] == estado]

        df_visual = df_filtrado.rename(columns={
            "id": "ID",
            "nombre": "Nombre",
            "ocupacion": "Ocupación",
            "fruta": "Fruta del Diablo",
            "nivel_general": "Nivel Haki",
            "recompensa": "Recompensa Activa",
            "estado": "Estado"
        })

        st.markdown("###  Resultados filtrados")
        st.dataframe(df_visual)

        exportar_csv(df_visual, "reporte_personajes.csv")

    except requests.RequestException:
        st.error("No se pudo obtener el reporte. Verifica la conexión con el backend.")
