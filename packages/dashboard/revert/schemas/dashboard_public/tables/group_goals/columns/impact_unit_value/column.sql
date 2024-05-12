-- Revert: schemas/dashboard_public/tables/group_goals/columns/impact_unit_value/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN impact_unit_value;
COMMIT;  

