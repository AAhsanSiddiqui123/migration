-- Revert: schemas/dashboard_public/tables/tracks/columns/is_private/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN is_private;
COMMIT;  

