-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/owner_id/alterations/alt0000000922 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

