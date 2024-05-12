-- Verify: schemas/dashboard_public/tables/app_constants/policies/anon_sel/policy on pg

BEGIN;
SELECT verify_policy('anon_sel', 'dashboard_public.app_constants');
COMMIT;  

