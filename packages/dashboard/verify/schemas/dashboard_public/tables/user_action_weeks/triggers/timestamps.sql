-- Verify schemas/dashboard_public/tables/user_action_weeks/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.user_action_weeks LIMIT 1;
SELECT updated_at FROM dashboard_public.user_action_weeks LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_user_action_weeks_modtime');

ROLLBACK;
