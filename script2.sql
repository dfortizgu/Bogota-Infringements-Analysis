-- Create temporary table with the distance from every data point to every location
WITH distances_loc AS(
  SELECT infr.LONGITUDE AS iLONGITUDE, infr.LATITUDE AS iLATITUDE, infr.FECHA_HORA, infr.OBJECTID, ST_DISTANCE(ST_GEOGPOINT(infr.LONGITUDE, infr.LATITUDE), ST_GEOGPOINT(geo.LONGITUDE, geo.LATITUDE)) AS     
  DISTANCE, CONCAT(geo.CODIGO,"-", geo.LOCALIDAD) AS LOCALIDAD

  FROM `sql-work-349119.google_capstone.bigquery_infringements` AS infr, `sql-work-349119.google_capstone.geo_reference_locations` AS geo
)

-- For each data point get the only the closest location and inner join it to its corresponding row in the bigquery_infringements table

SELECT original.*, loc_correct.LOCALIDAD AS ALTERNATIVE_LOC
FROM `sql-work-349119.google_capstone.bigquery_infringements` AS original INNER JOIN
(
  SELECT distances_min.FECHA_HORA, distances_min.OBJECTID, distances_min.DISTANCE, distances_loc.LOCALIDAD
  FROM (
    SELECT iLONGITUDE, iLATITUDE, FECHA_HORA,OBJECTID,MIN(DISTANCE) AS DISTANCE
    FROM distances_loc
    GROUP BY FECHA_HORA, OBJECTID, iLONGITUDE, iLATITUDE
  ) AS distances_min INNER JOIN 
  distances_loc ON distances_min.FECHA_HORA =  distances_loc.FECHA_HORA and distances_min.OBJECTID = distances_loc.OBJECTID and   distances_min.DISTANCE = distances_loc.DISTANCE

) AS loc_correct 

 ON loc_correct.FECHA_HORA = original.FECHA_HORA and loc_correct.OBJECTID = original.OBJECTID

-- The result of this query is stored in a new table (correct_loc_infringements) for correcting the empty fields in the original bigquery_infringements table