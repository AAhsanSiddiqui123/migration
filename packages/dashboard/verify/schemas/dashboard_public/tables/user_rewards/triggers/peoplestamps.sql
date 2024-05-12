-- Verify schemas/dashboard_public/tables/user_rewards/triggers/peoplestamps  on pg

BEGIN;

SELECT created_by FROM dashboard_public.user_rewards LIMIT 1;
SELECT updated_by FROM dashboard_public.user_rewards LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_user_rewards_moduser');

ROLLBACK;
