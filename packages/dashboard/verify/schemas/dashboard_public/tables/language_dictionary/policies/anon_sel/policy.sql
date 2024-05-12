-- Verify: schemas/dashboard_public/tables/language_dictionary/policies/anon_sel/policy on pg

BEGIN;
SELECT verify_policy('anon_sel', 'dashboard_public.language_dictionary');
COMMIT;  

