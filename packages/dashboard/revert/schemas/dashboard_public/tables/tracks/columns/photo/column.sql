-- Revert: schemas/dashboard_public/tables/tracks/columns/photo/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN photo;
COMMIT;  

