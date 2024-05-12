-- Revert: schemas/dashboard_public/tables/impacts/columns/impact_object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN impact_object_type_id;
COMMIT;  

