-- Verify: schemas/dashboard_public/tables/locations/policies/auth_upd/policy/alterations/alt0000001525 on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.locations');
COMMIT;  

