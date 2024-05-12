-- Verify: schemas/dashboard_public/tables/user_actions/policies/auth_sel_verified/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_verified', 'dashboard_public.user_actions');
COMMIT;  

