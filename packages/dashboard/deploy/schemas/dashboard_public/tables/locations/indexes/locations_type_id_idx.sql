-- Deploy: schemas/dashboard_public/tables/locations/indexes/locations_type_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/locations/columns/type_id/column

BEGIN;
CREATE INDEX locations_type_id_idx ON "dashboard_public".locations (type_id);
COMMIT;
