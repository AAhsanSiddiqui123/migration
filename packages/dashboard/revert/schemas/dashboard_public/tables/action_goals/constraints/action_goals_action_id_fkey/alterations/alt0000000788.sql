-- Revert: schemas/dashboard_public/tables/action_goals/constraints/action_goals_action_id_fkey/alterations/alt0000000788 from pg

BEGIN;
COMMENT ON CONSTRAINT action_goals_action_id_fkey ON "dashboard_public".action_goals IS NULL;
COMMIT;  

