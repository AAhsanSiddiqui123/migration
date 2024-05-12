-- Revert schemas/dashboard_public/tables/user_action_item_verifications/triggers/user_action_item_verify_set_props from pg

BEGIN;

DROP TRIGGER user_action_item_verify_set_props ON dashboard_public.user_action_item_verifications;
DROP FUNCTION dashboard_private.tg_user_action_item_verify_set_props; 

COMMIT;
