-- Revert: schemas/dashboard_public/tables/tracks/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN id;
COMMIT;  

