-- Verify: schemas/dashboard_public/tables/user_saved_actions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.user_saved_actions');
COMMIT;  

