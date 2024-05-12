-- Verify: schemas/dashboard_public/tables/app_constants/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.app_constants');
COMMIT;  

