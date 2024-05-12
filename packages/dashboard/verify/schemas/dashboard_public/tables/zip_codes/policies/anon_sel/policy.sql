-- Verify: schemas/dashboard_public/tables/zip_codes/policies/anon_sel/policy on pg

BEGIN;
SELECT verify_policy('anon_sel', 'dashboard_public.zip_codes');
COMMIT;  

