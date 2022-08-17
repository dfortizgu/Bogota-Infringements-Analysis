--CLASE_VEHICULO

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "SIN INFORMACIÓN"
WHERE UPPER(CLASE_VEHICULO) IN (" ", "-", "-1", "FIELD WAS NOT ENABLED", "SIN INFORMACION EN CARPET" );

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "AUTOMÓVIL"
WHERE UPPER(CLASE_VEHICULO) = "AUTOMOVIL";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "TRICICLO"
WHERE UPPER(CLASE_VEHICULO) = "BICICLETA O TRICICLO";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "CAMIÓN"
WHERE UPPER(CLASE_VEHICULO) = "CAMION";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "CICLOMOTO"
WHERE UPPER(CLASE_VEHICULO) = "CICLOMOTOR";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "CUATRIMOTO"
WHERE UPPER(CLASE_VEHICULO) IN ("CUADRICICLO", "CUATRICICLO");

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "MICROBUS"
WHERE UPPER(CLASE_VEHICULO) IN ("MICRO", "MINIBUS");

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "MOTOCICLETA"
WHERE UPPER(CLASE_VEHICULO) = "MOTOCICLO";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "MOTOTRICICLO"
WHERE UPPER(CLASE_VEHICULO) = "MOTOTRICILO";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "TRACCIÓN ANIMAL"
WHERE UPPER(CLASE_VEHICULO) = "TRACCION ANIMAL";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = "TRACTOCAMIÓN"
WHERE UPPER(CLASE_VEHICULO) = "TRACTOCAMION";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET CLASE_VEHICULO = UPPER(CLASE_VEHICULO)
WHERE TRUE;

--MEDIO_DETECCION

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET MEDIO_DETECCION = UPPER(MEDIO_DETECCION)
WHERE TRUE;

--TIPO_SERVICIO

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET TIPO_SERVICIO = "SIN INFORMACIÓN"
WHERE TIPO_SERVICIO IN (" ", "-", "Field was not enabled" );

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET TIPO_SERVICIO = "DIPLOMÁTICO"
WHERE UPPER(TIPO_SERVICIO) = "DIPLOMATICO";

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET TIPO_SERVICIO = UPPER(TIPO_SERVICIO)
WHERE TRUE;



