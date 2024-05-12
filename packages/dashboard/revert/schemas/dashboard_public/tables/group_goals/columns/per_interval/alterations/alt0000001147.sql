-- Revert: schemas/dashboard_public/tables/group_goals/columns/per_interval/alterations/alt0000001147 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.per_interval IS NULL;
COMMIT;  

