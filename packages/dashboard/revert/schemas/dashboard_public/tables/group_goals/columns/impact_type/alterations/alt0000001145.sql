-- Revert: schemas/dashboard_public/tables/group_goals/columns/impact_type/alterations/alt0000001145 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.impact_type IS NULL;
COMMIT;  

