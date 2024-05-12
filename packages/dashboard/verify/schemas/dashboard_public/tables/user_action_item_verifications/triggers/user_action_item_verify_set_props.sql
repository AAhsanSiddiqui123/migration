-- Verify schemas/dashboard_public/tables/user_action_item_verifications/triggers/user_action_item_verify_set_props  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_user_action_item_verify_set_props'); 
SELECT verify_trigger ('dashboard_public.user_action_item_verify_set_props');

ROLLBACK;
