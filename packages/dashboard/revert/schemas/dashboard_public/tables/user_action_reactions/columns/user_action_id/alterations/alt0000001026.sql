-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/user_action_id/alterations/alt0000001026 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions 
    ALTER COLUMN user_action_id DROP NOT NULL;


COMMIT;  

