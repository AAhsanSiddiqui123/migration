-- Verify: schemas/dashboard_public/tables/locations/policies/auth_sel/policy/alterations/alt0000001530 on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.locations');
COMMIT;  

