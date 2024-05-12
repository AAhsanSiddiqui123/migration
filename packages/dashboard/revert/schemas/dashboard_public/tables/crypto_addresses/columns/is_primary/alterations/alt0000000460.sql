-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000000460 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN is_primary DROP NOT NULL;


COMMIT;  

