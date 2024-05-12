-- Revert: schemas/dashboard_public/tables/tracks/columns/icon/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN icon;
COMMIT;  

