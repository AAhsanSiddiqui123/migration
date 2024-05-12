-- Verify: schemas/dashboard_limits_public/tables/app_limit_defaults/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_limits_public.app_limit_defaults');
COMMIT;  

