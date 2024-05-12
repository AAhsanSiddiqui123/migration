-- Revert schemas/dashboard_public/tables/reward_activity_types/policies/auth_sel from pg

BEGIN;



DROP POLICY auth_sel ON dashboard_public.reward_activity_types;

COMMIT;
