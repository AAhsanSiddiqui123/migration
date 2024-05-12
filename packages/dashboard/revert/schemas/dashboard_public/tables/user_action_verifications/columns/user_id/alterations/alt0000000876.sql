-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/user_id/alterations/alt0000000876 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

