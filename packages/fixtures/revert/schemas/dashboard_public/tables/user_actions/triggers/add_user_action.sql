-- Revert schemas/dashboard_public/tables/user_actions/triggers/add_user_action from pg

BEGIN;

DROP TRIGGER add_user_action ON dashboard_public.user_actions;
DROP FUNCTION dashboard_private.tg_add_user_action; 

COMMIT;
