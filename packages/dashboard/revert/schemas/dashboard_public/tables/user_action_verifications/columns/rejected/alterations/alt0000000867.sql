-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/rejected/alterations/alt0000000867 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN rejected DROP DEFAULT;

COMMIT;  

