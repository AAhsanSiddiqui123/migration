-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/address/alterations/alt0000000457 from pg

BEGIN;
ALTER TABLE "dashboard_public".crypto_addresses DROP CONSTRAINT crypto_addresses_address_chk;
COMMIT;  

