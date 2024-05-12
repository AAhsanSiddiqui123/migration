-- Verify: schemas/dashboard_public/tables/object_records/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'dashboard_public.object_records');
COMMIT;  

