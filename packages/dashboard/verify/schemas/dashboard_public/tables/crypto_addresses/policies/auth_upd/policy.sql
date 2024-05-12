-- Verify: schemas/dashboard_public/tables/crypto_addresses/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'dashboard_public.crypto_addresses');
COMMIT;  

