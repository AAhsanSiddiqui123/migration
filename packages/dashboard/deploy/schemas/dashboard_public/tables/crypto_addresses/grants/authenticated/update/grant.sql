-- Deploy: schemas/dashboard_public/tables/crypto_addresses/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;
GRANT UPDATE ( address, owner_id, is_primary ) ON TABLE "dashboard_public".crypto_addresses TO authenticated;
COMMIT;
