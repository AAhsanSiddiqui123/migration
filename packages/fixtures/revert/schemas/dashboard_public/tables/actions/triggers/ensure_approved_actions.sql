-- Revert schemas/dashboard_public/tables/actions/triggers/ensure_approved_actions from pg

BEGIN;

DROP TRIGGER ensure_approved_actions ON dashboard_public.actions;
DROP FUNCTION dashboard_private.tg_ensure_approved_actions; 

COMMIT;
