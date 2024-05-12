-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/action_item_id/alterations/alt0000000925 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN action_item_id DROP DEFAULT;

COMMIT;  

