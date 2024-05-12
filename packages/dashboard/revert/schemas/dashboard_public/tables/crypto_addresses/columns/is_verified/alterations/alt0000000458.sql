-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000458 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  

