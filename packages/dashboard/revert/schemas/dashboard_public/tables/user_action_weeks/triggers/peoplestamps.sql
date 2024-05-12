-- Revert schemas/dashboard_public/tables/user_action_weeks/triggers/peoplestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks DROP COLUMN created_by;
ALTER TABLE dashboard_public.user_action_weeks DROP COLUMN updated_by;
DROP TRIGGER update_dashboard_public_user_action_weeks_moduser ON dashboard_public.user_action_weeks;

COMMIT;
