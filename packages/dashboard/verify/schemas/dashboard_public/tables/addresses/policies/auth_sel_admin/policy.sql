-- Verify: schemas/dashboard_public/tables/addresses/policies/auth_sel_admin/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_admin', 'dashboard_public.addresses');
COMMIT;  

