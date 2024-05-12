-- Verify: schemas/dashboard_public/tables/object_records/policies/auth_sel_public/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_public', 'dashboard_public.object_records');
COMMIT;  

