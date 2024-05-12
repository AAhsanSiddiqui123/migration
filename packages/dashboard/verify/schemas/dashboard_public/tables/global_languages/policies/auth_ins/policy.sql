-- Verify: schemas/dashboard_public/tables/global_languages/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.global_languages');
COMMIT;  

