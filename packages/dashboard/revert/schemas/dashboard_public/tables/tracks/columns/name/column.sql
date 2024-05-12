-- Revert: schemas/dashboard_public/tables/tracks/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN name;
COMMIT;  

