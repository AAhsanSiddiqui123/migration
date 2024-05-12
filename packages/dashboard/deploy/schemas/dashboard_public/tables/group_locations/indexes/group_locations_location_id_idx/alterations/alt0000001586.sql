-- Deploy: schemas/dashboard_public/tables/group_locations/indexes/group_locations_location_id_idx/alterations/alt0000001586 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/group_locations/columns/location_id/column

BEGIN;
CREATE INDEX group_locations_location_id_idx ON "dashboard_public".group_locations (location_id);
COMMIT;
