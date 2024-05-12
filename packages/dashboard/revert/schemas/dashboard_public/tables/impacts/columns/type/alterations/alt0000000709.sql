-- Revert: schemas/dashboard_public/tables/impacts/columns/type/alterations/alt0000000709 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.type IS NULL;
COMMIT;  

