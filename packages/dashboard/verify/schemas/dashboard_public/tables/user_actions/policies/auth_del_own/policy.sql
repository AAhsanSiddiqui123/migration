-- Verify: schemas/dashboard_public/tables/user_actions/policies/auth_del_own/policy on pg

BEGIN;
SELECT verify_policy('auth_del_own', 'dashboard_public.user_actions');
COMMIT;  

