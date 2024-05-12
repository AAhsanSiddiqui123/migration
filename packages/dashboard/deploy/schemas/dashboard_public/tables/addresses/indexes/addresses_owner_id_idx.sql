-- Deploy: schemas/dashboard_public/tables/addresses/indexes/addresses_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table
-- requires: schemas/dashboard_public/tables/addresses/columns/owner_id/column

BEGIN;
CREATE INDEX addresses_owner_id_idx ON "dashboard_public".addresses (owner_id);
COMMIT;
