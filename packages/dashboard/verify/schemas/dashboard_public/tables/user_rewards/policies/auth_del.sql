-- Verify schemas/dashboard_public/tables/user_rewards/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.user_rewards');


ROLLBACK;
