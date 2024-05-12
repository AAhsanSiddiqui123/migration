-- Revert: schemas/dashboard_public/tables/action_goals/columns/id/alterations/alt0000000784 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

