-- Verify schemas/dashboard_public/tables/user_actions/triggers/remove_saved_actions  on pg

BEGIN;

SELECT verify_function ('dashboard_private.tg_remove_saved_actions'); 
SELECT verify_trigger ('dashboard_public.remove_saved_actions');

ROLLBACK;
