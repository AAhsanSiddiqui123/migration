-- Verify: schemas/dashboard_public/tables/user_pass_actions/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.user_pass_actions');
COMMIT;  

