-- Verify: schemas/dashboard_status_public/tables/app_level_requirements/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_status_public.app_level_requirements');
COMMIT;  

