-- Verify: schemas/dashboard_public/tables/user_pass_actions/policies/auth_sel_owner/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_owner', 'dashboard_public.user_pass_actions');
COMMIT;  

