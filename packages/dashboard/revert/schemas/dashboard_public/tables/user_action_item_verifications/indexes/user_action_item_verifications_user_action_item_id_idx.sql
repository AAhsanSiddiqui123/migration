-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/indexes/user_action_item_verifications_user_action_item_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_action_item_verifications_user_action_item_id_idx;
COMMIT;  

