-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/user_action_id/alterations/alt0000000924 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN user_action_id DROP DEFAULT;

COMMIT;  

