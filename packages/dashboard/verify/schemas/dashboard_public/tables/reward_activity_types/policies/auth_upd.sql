-- Verify schemas/dashboard_public/tables/reward_activity_types/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.reward_activity_types');


ROLLBACK;
