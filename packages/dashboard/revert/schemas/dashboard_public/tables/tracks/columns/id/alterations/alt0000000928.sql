-- Revert: schemas/dashboard_public/tables/tracks/columns/id/alterations/alt0000000928 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

