-- Deploy: schemas/dashboard_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000458 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table
-- requires: schemas/dashboard_public/tables/crypto_addresses/columns/is_verified/column

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN is_verified SET NOT NULL;
COMMIT;
