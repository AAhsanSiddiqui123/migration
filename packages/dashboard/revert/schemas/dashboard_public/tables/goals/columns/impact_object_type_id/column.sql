-- Revert: schemas/dashboard_public/tables/goals/columns/impact_object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN impact_object_type_id;
COMMIT;  

