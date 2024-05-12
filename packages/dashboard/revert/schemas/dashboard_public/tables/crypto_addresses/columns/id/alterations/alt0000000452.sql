-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/id/alterations/alt0000000452 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

