-- Revert schemas/dashboard_public/tables/user_action_verifications/triggers/insert_user_action_item_verification_notes from pg

BEGIN;

DROP TRIGGER insert_user_action_item_verification_notes ON dashboard_public.user_action_verifications;
DROP FUNCTION dashboard_private.tg_insert_user_action_item_verification_notes; 

COMMIT;
