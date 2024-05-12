-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/address/alterations/alt0000000456 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN address DROP NOT NULL;


COMMIT;  

