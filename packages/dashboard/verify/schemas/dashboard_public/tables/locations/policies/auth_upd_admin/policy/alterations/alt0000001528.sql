-- Verify: schemas/dashboard_public/tables/locations/policies/auth_upd_admin/policy/alterations/alt0000001528 on pg

BEGIN;
SELECT verify_policy('auth_upd_admin', 'dashboard_public.locations');
COMMIT;  

