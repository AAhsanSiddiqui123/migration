-- Revert: schemas/dashboard_public/tables/goals/constraints/goals_per_unit_id_fkey/alterations/alt0000000746 from pg

BEGIN;
COMMENT ON CONSTRAINT goals_per_unit_id_fkey ON "dashboard_public".goals IS NULL;
COMMIT;  

