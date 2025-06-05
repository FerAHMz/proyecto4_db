import streamlit as st
import pandas as pd
import requests
from utils.layout import exportar_csv


def cargar_frutas():
    response = requests.get("http://backend:8502/reportes/frutas/avanzado")
    if response.status_code == 200:
        return pd.DataFrame(response.json())
    return pd.DataFrame([])

def mostrar():
    st.title("Reporte Avanzado: Frutas del Diablo")
    df = cargar_frutas()

    if df.empty:
        st.warning("No se encontraron frutas.")
        return

    tipo_fruta = st.multiselect("Tipo de fruta", df["tipo_fruta_nombre"].dropna().unique())
    estado = st.multiselect("Estado", df["estado"].dropna().unique())
    nivel = st.multiselect("Nivel máximo de habilidad", df["nivel_maximo"].dropna().unique())
    cantidad = st.slider("Cantidad de habilidades", 0, int(df["cantidad_habilidades"].max()), (0, 4))
    asociada = st.checkbox("Solo frutas asociadas a personajes")

    if tipo_fruta:
        df = df[df["tipo_fruta_nombre"].isin(tipo_fruta)]
    if estado:
        df = df[df["estado"].isin(estado)]
    if nivel:
        df = df[df["nivel_maximo"].isin(nivel)]
    if asociada:
        df = df[df["esta_asociada"] == True]
    if cantidad:
        df = df[df["cantidad_habilidades"].between(cantidad[0], cantidad[1])]

    st.dataframe(df)
    exportar_csv(df, "reporte_frutas_avanzado.csv")
