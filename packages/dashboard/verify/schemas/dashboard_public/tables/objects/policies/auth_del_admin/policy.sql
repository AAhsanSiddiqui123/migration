-- Verify: schemas/dashboard_public/tables/objects/policies/auth_del_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_del_admin', 'dashboard_public.objects');
COMMIT;  

