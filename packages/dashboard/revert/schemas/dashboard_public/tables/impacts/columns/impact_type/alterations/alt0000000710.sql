-- Revert: schemas/dashboard_public/tables/impacts/columns/impact_type/alterations/alt0000000710 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.impact_type IS NULL;
COMMIT;  

