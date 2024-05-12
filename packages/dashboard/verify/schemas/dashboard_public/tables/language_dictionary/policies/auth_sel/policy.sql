-- Verify: schemas/dashboard_public/tables/language_dictionary/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.language_dictionary');
COMMIT;  

