-- Verify: schemas/dashboard_public/tables/global_languages/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.global_languages');
COMMIT;  

