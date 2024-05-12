-- Verify: schemas/dashboard_public/tables/addresses/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.addresses');
COMMIT;  

