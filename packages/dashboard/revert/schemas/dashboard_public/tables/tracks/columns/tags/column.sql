-- Revert: schemas/dashboard_public/tables/tracks/columns/tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN tags;
COMMIT;  

