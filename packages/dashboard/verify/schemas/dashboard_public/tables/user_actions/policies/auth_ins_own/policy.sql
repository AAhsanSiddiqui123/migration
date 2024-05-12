-- Verify: schemas/dashboard_public/tables/user_actions/policies/auth_ins_own/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_own', 'dashboard_public.user_actions');
COMMIT;  

