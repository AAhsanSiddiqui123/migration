-- Verify: schemas/dashboard_public/tables/user_pass_actions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.user_pass_actions');
COMMIT;  

