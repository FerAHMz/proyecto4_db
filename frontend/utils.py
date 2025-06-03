import streamlit as st

def exportar_csv(df, nombre_archivo="reporte.csv"):
    csv = df.to_csv(index=False).encode('utf-8')
    st.download_button(
        label=" Descargar CSV",
        data=csv,
        file_name=nombre_archivo,
        mime='text/csv',
    )
