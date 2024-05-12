-- Verify: schemas/dashboard_public/tables/global_languages/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.global_languages');
COMMIT;  

