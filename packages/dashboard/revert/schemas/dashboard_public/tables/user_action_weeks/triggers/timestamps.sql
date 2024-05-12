-- Revert schemas/dashboard_public/tables/user_action_weeks/triggers/timestamps from pg

BEGIN;

ALTER TABLE dashboard_public.user_action_weeks DROP COLUMN created_at;
ALTER TABLE dashboard_public.user_action_weeks DROP COLUMN updated_at;
DROP TRIGGER update_dashboard_public_user_action_weeks_modtime ON dashboard_public.user_action_weeks;

COMMIT;
