-- Revert: schemas/dashboard_public/tables/tracks/columns/type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN type_id;
COMMIT;  

