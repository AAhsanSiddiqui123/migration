-- Verify schemas/dashboard_public/tables/user_rewards/policies/auth_sel  on pg

BEGIN;

SELECT verify_policy ('auth_sel', 'dashboard_public.user_rewards');


ROLLBACK;
