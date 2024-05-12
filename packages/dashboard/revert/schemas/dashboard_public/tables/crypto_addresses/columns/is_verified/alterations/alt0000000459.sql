-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000459 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

