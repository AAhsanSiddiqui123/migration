-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_sel/policy/alterations/alt0000001502 on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.location_types');
COMMIT;  

