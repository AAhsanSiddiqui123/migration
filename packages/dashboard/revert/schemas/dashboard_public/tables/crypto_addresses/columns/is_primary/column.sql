-- Revert: schemas/dashboard_public/tables/crypto_addresses/columns/is_primary/column from pg

BEGIN;


ALTER TABLE "dashboard_public".crypto_addresses DROP COLUMN is_primary;
COMMIT;  

