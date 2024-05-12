-- Verify schemas/dashboard_public/tables/user_action_weeks/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.user_action_weeks');


ROLLBACK;
