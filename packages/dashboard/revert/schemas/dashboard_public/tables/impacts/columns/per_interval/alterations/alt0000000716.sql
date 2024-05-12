-- Revert: schemas/dashboard_public/tables/impacts/columns/per_interval/alterations/alt0000000716 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts.per_interval IS NULL;
COMMIT;  

