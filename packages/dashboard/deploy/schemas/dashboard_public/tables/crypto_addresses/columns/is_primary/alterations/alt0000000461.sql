-- Deploy: schemas/dashboard_public/tables/crypto_addresses/columns/is_primary/alterations/alt0000000461 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table
-- requires: schemas/dashboard_public/tables/crypto_addresses/columns/is_primary/column

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN is_primary SET DEFAULT false;
COMMIT;
