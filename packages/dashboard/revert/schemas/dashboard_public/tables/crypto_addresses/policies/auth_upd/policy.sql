-- Revert: schemas/dashboard_public/tables/crypto_addresses/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "dashboard_public".crypto_addresses;
COMMIT;  

