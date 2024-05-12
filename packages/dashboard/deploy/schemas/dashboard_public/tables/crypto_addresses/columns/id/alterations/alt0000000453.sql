-- Deploy: schemas/dashboard_public/tables/crypto_addresses/columns/id/alterations/alt0000000453 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table
-- requires: schemas/dashboard_public/tables/crypto_addresses/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
