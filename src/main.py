from opensky_api import OpenSkyApi

api = OpenSkyApi()
# EUROPA?:
bbox_europe = (-35, 70, -25, 45)
states = api.get_states(bbox=bbox_europe)

diccionario_vuelos = {}

for s in states.states:
    icao24 = s.icao24
    vuelo = [
        s.origin_country,
        s.longitude,
        s.latitude,
        s.baro_altitude,
        s.velocity
    ]

    diccionario_vuelos[icao24] = vuelo
print(diccionario_vuelos)