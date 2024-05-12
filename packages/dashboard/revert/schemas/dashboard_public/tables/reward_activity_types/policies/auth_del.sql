-- Revert schemas/dashboard_public/tables/reward_activity_types/policies/auth_del from pg

BEGIN;



DROP POLICY auth_del ON dashboard_public.reward_activity_types;

COMMIT;
