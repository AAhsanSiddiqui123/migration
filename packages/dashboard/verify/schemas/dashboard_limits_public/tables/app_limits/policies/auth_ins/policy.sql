-- Verify: schemas/dashboard_limits_public/tables/app_limits/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_limits_public.app_limits');
COMMIT;  

