-- Revert: schemas/dashboard_public/tables/goals/columns/impact_type/alterations/alt0000000741 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".goals.impact_type IS NULL;
COMMIT;  

