-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/user_id/alterations/alt0000001033 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

