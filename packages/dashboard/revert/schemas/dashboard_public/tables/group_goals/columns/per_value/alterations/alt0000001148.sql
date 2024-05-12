-- Revert: schemas/dashboard_public/tables/group_goals/columns/per_value/alterations/alt0000001148 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_goals.per_value IS NULL;
COMMIT;  

