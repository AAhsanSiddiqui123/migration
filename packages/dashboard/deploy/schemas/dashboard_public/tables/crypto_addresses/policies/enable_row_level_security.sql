-- Deploy: schemas/dashboard_public/tables/crypto_addresses/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses
    ENABLE ROW LEVEL SECURITY;
COMMIT;
