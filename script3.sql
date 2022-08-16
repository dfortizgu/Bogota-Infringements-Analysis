UPDATE `sql-work-349119.google_capstone.correct_loc_infringements`
SET LOCALIDAD = ALTERNATIVE_LOC
WHERE LOCALIDAD IN (" ", "-", "Otro", "BOGOTA D.C.", "Field was not enabled" );

ALTER TABLE `sql-work-349119.google_capstone.correct_loc_infringements` DROP COLUMN IF EXISTS ALTERNATIVE_LOC;