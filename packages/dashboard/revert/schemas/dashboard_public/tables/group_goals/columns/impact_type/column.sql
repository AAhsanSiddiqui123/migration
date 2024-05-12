-- Revert: schemas/dashboard_public/tables/group_goals/columns/impact_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_goals DROP COLUMN impact_type;
COMMIT;  

