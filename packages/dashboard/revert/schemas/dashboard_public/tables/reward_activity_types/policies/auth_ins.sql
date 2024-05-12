-- Revert schemas/dashboard_public/tables/reward_activity_types/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.reward_activity_types;

COMMIT;
