-- Revert schemas/dashboard_public/tables/reward_activity_types/policies/auth_upd from pg

BEGIN;



DROP POLICY auth_upd ON dashboard_public.reward_activity_types;

COMMIT;
