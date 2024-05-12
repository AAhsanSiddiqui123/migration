-- Verify: schemas/dashboard_public/tables/app_constants/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.app_constants');
COMMIT;  

