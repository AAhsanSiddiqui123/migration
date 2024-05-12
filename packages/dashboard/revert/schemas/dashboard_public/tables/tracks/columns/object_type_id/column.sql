-- Revert: schemas/dashboard_public/tables/tracks/columns/object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks DROP COLUMN object_type_id;
COMMIT;  

