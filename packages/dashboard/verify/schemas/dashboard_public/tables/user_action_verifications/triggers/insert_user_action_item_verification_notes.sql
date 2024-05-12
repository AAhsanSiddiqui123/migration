-- Verify schemas/dashboard_public/tables/user_action_verifications/triggers/insert_user_action_item_verification_notes  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_insert_user_action_item_verification_notes'); 
SELECT verify_trigger ('dashboard_public.insert_user_action_item_verification_notes');

ROLLBACK;
