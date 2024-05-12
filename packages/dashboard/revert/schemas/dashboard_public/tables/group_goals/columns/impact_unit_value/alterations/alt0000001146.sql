-- Revert: schemas/dashboard_public/tables/group_goals/columns/impact_unit_value/alterations/alt0000001146 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.impact_unit_value IS NULL;
COMMIT;  

