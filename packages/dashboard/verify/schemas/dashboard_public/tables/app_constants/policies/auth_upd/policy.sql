-- Verify: schemas/dashboard_public/tables/app_constants/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.app_constants');
COMMIT;  

