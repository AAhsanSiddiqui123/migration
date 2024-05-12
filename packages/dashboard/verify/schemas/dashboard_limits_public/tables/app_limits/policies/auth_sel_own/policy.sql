-- Verify: schemas/dashboard_limits_public/tables/app_limits/policies/auth_sel_own/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_own', 'dashboard_limits_public.app_limits');
COMMIT;  

