-- Revert: schemas/dashboard_public/tables/action_goals/columns/goal_id/alterations/alt0000000789 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals 
    ALTER COLUMN goal_id DROP NOT NULL;


COMMIT;  

