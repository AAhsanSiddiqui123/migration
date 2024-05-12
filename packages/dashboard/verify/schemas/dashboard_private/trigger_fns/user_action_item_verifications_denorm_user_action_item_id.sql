-- Verify: schemas/dashboard_private/trigger_fns/user_action_item_verifications_denorm_user_action_item_id on pg

BEGIN;
SELECT verify_function('dashboard_private.user_action_item_verifications_denorm_user_action_item_id');
COMMIT;  

