-- Deploy: schemas/dashboard_public/tables/crypto_addresses/columns/address/alterations/alt0000000456 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table
-- requires: schemas/dashboard_public/tables/crypto_addresses/columns/address/column

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN address SET NOT NULL;
COMMIT;
