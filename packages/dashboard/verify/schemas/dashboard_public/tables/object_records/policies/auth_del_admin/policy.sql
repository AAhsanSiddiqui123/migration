-- Verify: schemas/dashboard_public/tables/object_records/policies/auth_del_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_del_admin', 'dashboard_public.object_records');
COMMIT;  

