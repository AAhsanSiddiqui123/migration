-- Revert: schemas/dashboard_public/tables/goals/columns/per_interval/alterations/alt0000000743 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".goals.per_interval IS NULL;
COMMIT;  

