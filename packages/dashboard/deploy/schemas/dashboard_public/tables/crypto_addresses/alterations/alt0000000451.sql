-- Deploy: schemas/dashboard_public/tables/crypto_addresses/alterations/alt0000000451 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses
    DISABLE ROW LEVEL SECURITY;
COMMIT;
