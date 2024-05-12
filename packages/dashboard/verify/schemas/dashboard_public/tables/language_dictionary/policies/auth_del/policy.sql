-- Verify: schemas/dashboard_public/tables/language_dictionary/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.language_dictionary');
COMMIT;  

