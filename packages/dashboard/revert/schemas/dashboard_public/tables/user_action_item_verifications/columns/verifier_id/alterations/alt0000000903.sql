-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/verifier_id/alterations/alt0000000903 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications 
    ALTER COLUMN verifier_id DROP DEFAULT;

COMMIT;  

