-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/action_id/alterations/alt0000001031 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN action_id DROP NOT NULL;


COMMIT;  

