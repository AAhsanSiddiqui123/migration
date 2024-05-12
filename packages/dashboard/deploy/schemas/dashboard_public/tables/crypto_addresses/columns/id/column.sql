-- Deploy: schemas/dashboard_public/tables/crypto_addresses/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/crypto_addresses/table

BEGIN;

ALTER TABLE "dashboard_public".crypto_addresses ADD COLUMN id uuid;
COMMIT;
