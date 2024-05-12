-- Deploy: schemas/dashboard_public/tables/crypto_addresses/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;
GRANT INSERT ( address, owner_id, is_primary ) ON TABLE "dashboard_public".crypto_addresses TO authenticated;
COMMIT;
