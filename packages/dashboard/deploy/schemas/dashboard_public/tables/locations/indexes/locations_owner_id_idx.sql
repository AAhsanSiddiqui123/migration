-- Deploy: schemas/dashboard_public/tables/locations/indexes/locations_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/owner_id/column

BEGIN;
CREATE INDEX locations_owner_id_idx ON "dashboard_public".locations (owner_id);
COMMIT;
