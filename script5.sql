-- The INFRACCION code E03 for the wrong data with F and F00 (this codes does not exist) is obtained by comparing the code E03 and its description with the description this fields had

UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET INFRACCION = "E03"
WHERE INFRACCION IN ("F", "F00");

SELECT LATITUDE, LONGITUDE, OBJECTID, FECHA_HORA, MEDIO_DETECCION, CLASE_VEHICULO, TIPO_SERVICIO,ref.INFRACCION AS INFRACCION, UPPER(ref.DES_INFRACCION) AS DES_INFRACCION, LOCALIDAD FROM `sql-work-349119.google_capstone.correct_loc_infringements` AS ori 
INNER JOIN `sql-work-349119.google_capstone.ref_infringement` AS ref ON ori.INFRACCION = ref.INFRACCION;

-- Once executed the last query the result is saved in the table clean_infringements
