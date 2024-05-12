-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_parent_id_fkey/alterations/alt0000000745 from pg

BEGIN;
COMMENT ON CONSTRAINT goals_parent_id_fkey ON "dashboard_public".goals IS NULL;
COMMIT;  

