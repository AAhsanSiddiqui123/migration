-- Revert: schemas/dashboard_public/tables/tracks/columns/is_published/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN is_published;
COMMIT;  

