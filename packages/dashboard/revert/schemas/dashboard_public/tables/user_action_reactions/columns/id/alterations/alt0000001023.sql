-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/id/alterations/alt0000001023 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

