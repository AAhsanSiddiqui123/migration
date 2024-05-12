-- Revert: schemas/dashboard_public/tables/impacts/columns/per_value/alterations/alt0000000717 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.per_value IS NULL;
COMMIT;  

