-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/address/column from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses DROP COLUMN address;
COMMIT;  

