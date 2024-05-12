-- Revert: schemas/dashboard_public/tables/crypto_addresses/alterations/alt0000000451 from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

