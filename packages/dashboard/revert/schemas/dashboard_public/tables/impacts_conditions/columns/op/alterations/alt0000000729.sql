-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/op/alterations/alt0000000729 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".impacts_conditions.op IS NULL;
COMMIT;  

