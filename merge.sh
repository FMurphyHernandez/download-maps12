#!/bin/bash
#Since you have to download the electoral maps by state this
#file merges them into a single file

if [ -f map-out/distritos/mx_distrito.shp ];
then
   rm map-out/distritos/mx_distrito.*
fi

for file in unzip/distrito/*.shp
do
        echo ${file}
	ogr2ogr -update -append map-out/distritos/mx_distrito.shp ${file}  -nln mx_distrito 
done


if [ -f unzip/seccion/mx_secciones_ife.shp ];
then
   rm unzip/seccion/mx_secciones_ife.*
fi

for file in unzip/seccion/*.shp
do
        echo ${file}
	ogr2ogr -update -append unzip/seccion/mx_secciones_ife.shp ${file}  -nln mx_secciones_ife
done
