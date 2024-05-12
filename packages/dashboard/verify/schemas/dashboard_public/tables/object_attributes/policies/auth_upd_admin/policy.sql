-- Verify: schemas/dashboard_public/tables/object_attributes/policies/auth_upd_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_upd_admin', 'dashboard_public.object_attributes');
COMMIT;  

