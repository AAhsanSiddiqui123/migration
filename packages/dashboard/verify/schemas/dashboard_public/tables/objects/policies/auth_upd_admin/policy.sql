-- Verify: schemas/dashboard_public/tables/objects/policies/auth_upd_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_admin', 'dashboard_public.objects');
COMMIT;  

