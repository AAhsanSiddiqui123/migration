-- Verify dashboard:schemas/dashboard_public/tables/groups/policies/auth_upd/policy_v2 on pg

BEGIN;

SELECT verify_policy('auth_upd', 'dashboard_public.groups');

ROLLBACK;
