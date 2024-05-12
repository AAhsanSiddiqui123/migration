-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/user_action_id/alterations/alt0000000874 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN user_action_id DROP NOT NULL;


COMMIT;  

