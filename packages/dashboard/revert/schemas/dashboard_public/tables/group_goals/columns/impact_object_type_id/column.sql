-- Revert: schemas/dashboard_public/tables/group_goals/columns/impact_object_type_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN impact_object_type_id;
COMMIT;  

