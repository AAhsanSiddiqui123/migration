-- Verify: schemas/dashboard_public/tables/locations/policies/auth_ins_admin/policy/alterations/alt0000001527 on pg

BEGIN;
SELECT verify_policy('auth_ins_admin', 'dashboard_public.locations');
COMMIT;  

