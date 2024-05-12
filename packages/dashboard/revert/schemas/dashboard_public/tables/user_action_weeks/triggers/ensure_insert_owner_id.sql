-- Revert schemas/dashboard_public/tables/user_action_weeks/triggers/ensure_insert_owner_id from pg

BEGIN;

DROP TRIGGER ensure_insert_owner_id ON dashboard_public.user_action_weeks;
DROP FUNCTION dashboard_private.user_action_weeks_ensure_insert_owner_id; 

COMMIT;
