-- Revert: schemas/dashboard_public/tables/tracks/columns/color/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN color;
COMMIT;  

