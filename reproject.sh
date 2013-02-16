#!/bin/bash 
PROJECTION="+proj=longlat +ellps=WGS84 +no_defs +towgs84=0,0,0"

ogr2ogr map-out/estados/estados.shp unzip/mexico/MUNICIPIOS.shp -t_srs $PROJECTION
ogr2ogr map-out/municipios/municipios.shp unzip/mexico/ESTADOS.shp -t_srs $PROJECTION
ogr2ogr map-out/localidades/localidades-urbanas.shp unzip/mexico/POLIGONOS_URBANOS.shp -t_srs $PROJECTION
ogr2ogr map-out/localidades/localidades-rurales.shp unzip/mexico/LOCALIDADES_RURALES.shp -t_srs $PROJECTION
