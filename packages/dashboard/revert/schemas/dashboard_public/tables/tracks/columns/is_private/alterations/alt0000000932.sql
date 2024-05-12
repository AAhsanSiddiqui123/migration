-- Revert: schemas/dashboard_public/tables/tracks/columns/is_private/alterations/alt0000000932 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN is_private DROP DEFAULT;

COMMIT;  

