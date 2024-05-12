-- Revert: schemas/dashboard_public/tables/goals/columns/per_value/alterations/alt0000000744 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".goals.per_value IS NULL;
COMMIT;  

