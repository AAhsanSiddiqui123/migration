-- Revert: schemas/dashboard_public/tables/crypto_addresses/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "dashboard_public".crypto_addresses;
COMMIT;  

