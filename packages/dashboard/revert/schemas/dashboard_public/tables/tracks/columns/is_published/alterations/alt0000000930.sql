-- Revert: schemas/dashboard_public/tables/tracks/columns/is_published/alterations/alt0000000930 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN is_published DROP DEFAULT;

COMMIT;  

