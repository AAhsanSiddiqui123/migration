-- Revert: schemas/dashboard_public/tables/action_goals/columns/owner_id/alterations/alt0000000791 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_goals 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

