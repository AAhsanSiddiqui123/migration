-- Verify: schemas/dashboard_status_public/tables/app_levels/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_status_public.app_levels');
COMMIT;  

