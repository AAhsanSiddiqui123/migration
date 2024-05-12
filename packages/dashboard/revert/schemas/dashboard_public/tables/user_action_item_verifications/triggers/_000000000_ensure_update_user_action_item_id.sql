-- Revert: schemas/dashboard_public/tables/user_action_item_verifications/triggers/_000000000_ensure_update_user_action_item_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_user_action_item_id ON "dashboard_public".user_action_item_verifications;
COMMIT;  

