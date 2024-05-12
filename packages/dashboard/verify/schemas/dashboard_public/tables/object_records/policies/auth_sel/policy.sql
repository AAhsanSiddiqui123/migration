-- Verify: schemas/dashboard_public/tables/object_records/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.object_records');
COMMIT;  

