-- Verify: schemas/dashboard_public/tables/language_dictionary/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.language_dictionary');
COMMIT;  

