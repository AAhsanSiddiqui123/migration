-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000000454 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

