-- Revert: schemas/dashboard_public/tables/tracks/columns/data_tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN data_tags;
COMMIT;  

