-- Verify schemas/dashboard_public/tables/user_action_weeks/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.user_action_weeks LIMIT 1;
SELECT updated_by FROM dashboard_public.user_action_weeks LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_user_action_weeks_moduser');

ROLLBACK;
