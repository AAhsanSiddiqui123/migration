-- Revert: schemas/dashboard_public/tables/tracks/columns/is_approved/alterations/alt0000000931 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN is_approved DROP DEFAULT;

COMMIT;  

