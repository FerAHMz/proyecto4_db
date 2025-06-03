"""
Funciones para comunicación con el backend:
- Configuración de cliente HTTP
- Funciones para cada endpoint
- Manejo de errores
- Caché de respuestas
"""

import requests 

BASE_URL = "http://backend:8502"

def obtener_frutas(estado=None, tipo_fruta_id=None):
    params ={}
    if estado:
        params["estado"] = estado
    if tipo_fruta_id:
        params["tipo_fruta_id"] = tipo_fruta_id
    response = requests.get(f"{BASE_URL}/frutas/", params=params)
    return response.json()