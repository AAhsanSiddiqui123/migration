-- Revert: schemas/dashboard_public/tables/tracks/columns/bounds/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN bounds;
COMMIT;  

