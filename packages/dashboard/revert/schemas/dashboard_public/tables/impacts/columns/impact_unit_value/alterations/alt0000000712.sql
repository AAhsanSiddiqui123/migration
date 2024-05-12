-- Revert: schemas/dashboard_public/tables/impacts/columns/impact_unit_value/alterations/alt0000000712 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.impact_unit_value IS NULL;
COMMIT;  

