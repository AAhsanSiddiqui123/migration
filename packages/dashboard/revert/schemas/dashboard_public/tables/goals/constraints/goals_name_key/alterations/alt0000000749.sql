-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_name_key/alterations/alt0000000749 from pg

BEGIN;
COMMENT ON CONSTRAINT goals_name_key ON "dashboard_public".goals IS NULL;
COMMIT;  

