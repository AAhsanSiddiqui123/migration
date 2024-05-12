-- Revert: schemas/dashboard_public/tables/impacts/columns/object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN object_type_id;
COMMIT;  

