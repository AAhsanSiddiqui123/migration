-- Revert: schemas/dashboard_public/tables/goals/columns/impact_unit_value/alterations/alt0000000742 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".goals.impact_unit_value IS NULL;
COMMIT;  

