-- Verify: schemas/dashboard_status_public/tables/app_levels/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_status_public.app_levels');
COMMIT;  

