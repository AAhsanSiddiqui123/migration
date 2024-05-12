-- Deploy: schemas/dashboard_public/tables/crypto_addresses/constraints/crypto_addresses_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses
    ADD CONSTRAINT crypto_addresses_pkey PRIMARY KEY (id);
COMMIT;
