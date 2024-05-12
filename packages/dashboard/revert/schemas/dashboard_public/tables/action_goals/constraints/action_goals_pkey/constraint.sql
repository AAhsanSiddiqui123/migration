-- Revert: schemas/dashboard_public/tables/action_goals/constraints/action_goals_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals 
    DROP CONSTRAINT action_goals_pkey;

COMMIT;  

