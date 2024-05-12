-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_slug_key/alterations/alt0000000750 from pg

BEGIN;
COMMENT ON CONSTRAINT goals_slug_key ON "dashboard_public".goals IS NULL;
COMMIT;  

