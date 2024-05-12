-- Revert schemas/dashboard_public/tables/user_actions/triggers/verify_on_insert from pg

BEGIN;

DROP TRIGGER verify_on_insert ON dashboard_public.user_actions;
DROP FUNCTION dashboard_private.tg_verify_on_insert; 

COMMIT;
