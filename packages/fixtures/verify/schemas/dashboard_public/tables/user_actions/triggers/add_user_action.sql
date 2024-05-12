-- Verify schemas/dashboard_public/tables/user_actions/triggers/add_user_action  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_add_user_action'); 
SELECT verify_trigger ('dashboard_public.add_user_action');

ROLLBACK;
