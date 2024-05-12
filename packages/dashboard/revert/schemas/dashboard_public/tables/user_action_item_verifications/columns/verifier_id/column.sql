-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/columns/verifier_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_item_verifications DROP COLUMN verifier_id;
COMMIT;  

