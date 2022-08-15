UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "1-USAQUÉN"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%USAQUE%" OR LOCALIDAD LIKE "%USAQUÉ%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "2-CHAPINERO"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%CHAP%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "3-SANTA FE"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%SANTA%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "4-SAN CRISTOBAL"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%CRISTO%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "5-USME"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%USME%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "6-TUNJUELITO"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%TUNJU%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "7-BOSA"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%BOSA%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "8-KENNEDY"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%KEN%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "9-FONTIBÓN"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%FONTI%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "10-ENGATIVÁ"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%ENGA%"
);


UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "11-SUBA"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%SUBA%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "12-BARRIOS UNIDOS"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%BARRIOS%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "13-TEUSAQUILLO"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%TEUSA%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "14-LOS MÁRTIRES"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%TIRES%"
);


UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "15-ANTONIO NARIÑO"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%ANTONIO%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "16-PUENTE ARANDA"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%PUENTE%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "17-LA CANDELARIA"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%CANDELARIA%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "18-RAFAEL URIBE URIBE"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%RAFAEL%"
);

UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "19-CIUDAD BOLÍVAR"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%CIUDAD%"
);


UPDATE `sql-work-349119.google_capstone.bigquery_infringements`
SET LOCALIDAD = "20-SUMAPAZ"
WHERE LOCALIDAD IN (SELECT DISTINCT LOCALIDAD 
  FROM `sql-work-349119.google_capstone.bigquery_infringements`
  WHERE LOCALIDAD LIKE "%SUMA%"
);















