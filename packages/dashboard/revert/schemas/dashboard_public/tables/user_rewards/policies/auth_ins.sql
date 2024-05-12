-- Revert schemas/dashboard_public/tables/user_rewards/policies/auth_ins from pg

BEGIN;



DROP POLICY auth_ins ON dashboard_public.user_rewards;

COMMIT;
