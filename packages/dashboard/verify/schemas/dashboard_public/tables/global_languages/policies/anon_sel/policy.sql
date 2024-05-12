-- Verify: schemas/dashboard_public/tables/global_languages/policies/anon_sel/policy on pg

BEGIN;
SELECT verify_policy('anon_sel', 'dashboard_public.global_languages');
COMMIT;  

