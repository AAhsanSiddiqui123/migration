-- Verify schemas/dashboard_public/tables/reward_activity_types/triggers/timestamps  on pg

BEGIN;

SELECT created_at FROM dashboard_public.reward_activity_types LIMIT 1;
SELECT updated_at FROM dashboard_public.reward_activity_types LIMIT 1;
SELECT verify_trigger ('dashboard_public.update_dashboard_public_reward_activity_types_modtime');

ROLLBACK;
