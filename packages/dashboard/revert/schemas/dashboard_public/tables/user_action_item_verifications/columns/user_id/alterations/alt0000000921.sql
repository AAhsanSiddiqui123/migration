-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/user_id/alterations/alt0000000921 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

