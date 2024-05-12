-- Verify: schemas/dashboard_limits_public/tables/app_limit_defaults/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_limits_public.app_limit_defaults');
COMMIT;  

