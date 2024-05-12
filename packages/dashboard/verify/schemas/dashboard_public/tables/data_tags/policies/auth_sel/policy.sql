-- Verify: schemas/dashboard_public/tables/data_tags/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.data_tags');
COMMIT;  

