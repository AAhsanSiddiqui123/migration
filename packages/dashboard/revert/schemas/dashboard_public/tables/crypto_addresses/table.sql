-- Revert: schemas/dashboard_public/tables/crypto_addresses/table from pg

BEGIN;
DROP TABLE "dashboard_public".crypto_addresses;
COMMIT;  

