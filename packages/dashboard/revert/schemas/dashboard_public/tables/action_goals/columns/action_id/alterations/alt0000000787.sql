-- Revert: schemas/dashboard_public/tables/action_goals/columns/action_id/alterations/alt0000000787 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

