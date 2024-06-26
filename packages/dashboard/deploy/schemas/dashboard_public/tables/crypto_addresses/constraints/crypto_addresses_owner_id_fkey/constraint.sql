-- Deploy: schemas/dashboard_public/tables/crypto_addresses/constraints/crypto_addresses_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/crypto_addresses/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/crypto_addresses/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses 
    ADD CONSTRAINT crypto_addresses_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
