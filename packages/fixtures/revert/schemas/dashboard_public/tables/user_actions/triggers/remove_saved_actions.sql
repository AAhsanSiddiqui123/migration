-- Revert schemas/dashboard_public/tables/user_actions/triggers/remove_saved_actions from pg

BEGIN;

DROP TRIGGER remove_saved_actions ON dashboard_public.user_actions;
DROP FUNCTION dashboard_private.tg_remove_saved_actions; 

COMMIT;
