-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses DROP COLUMN id;
COMMIT;  

