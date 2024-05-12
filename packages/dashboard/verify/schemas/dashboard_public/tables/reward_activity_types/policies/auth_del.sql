-- Verify schemas/dashboard_public/tables/reward_activity_types/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.reward_activity_types');


ROLLBACK;
