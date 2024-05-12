-- Verify: schemas/dashboard_public/tables/location_types/policies/auth_upd/policy/alterations/alt0000001500 on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.location_types');
COMMIT;  

