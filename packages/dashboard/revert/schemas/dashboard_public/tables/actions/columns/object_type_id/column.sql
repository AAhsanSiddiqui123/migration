-- Revert: schemas/dashboard_public/tables/actions/columns/object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN object_type_id;
COMMIT;  

