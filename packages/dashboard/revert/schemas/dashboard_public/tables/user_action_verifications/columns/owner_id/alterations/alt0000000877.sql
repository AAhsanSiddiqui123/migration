-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/owner_id/alterations/alt0000000877 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

