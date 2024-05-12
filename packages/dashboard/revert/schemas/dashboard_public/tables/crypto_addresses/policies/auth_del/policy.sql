-- Revert: schemas/dashboard_public/tables/crypto_addresses/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "dashboard_public".crypto_addresses;
COMMIT;  

