-- Revert: schemas/dashboard_public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    DROP CONSTRAINT crypto_addresses_owner_id_fkey;

COMMIT;  

