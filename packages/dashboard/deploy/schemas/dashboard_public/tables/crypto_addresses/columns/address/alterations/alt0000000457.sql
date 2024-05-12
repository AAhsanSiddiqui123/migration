-- Deploy: schemas/dashboard_public/tables/crypto_addresses/columns/address/alterations/alt0000000457 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table
-- requires: schemas/dashboard_public/tables/crypto_addresses/columns/address/column

BEGIN;
ALTER TABLE "dashboard_public".crypto_addresses ADD CONSTRAINT crypto_addresses_address_chk CHECK (address ~* '^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$');
COMMIT;
