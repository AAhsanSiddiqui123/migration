-- Deploy: schemas/dashboard_public/tables/group_locations/indexes/group_locations_group_id_idx/alterations/alt0000001581 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/table
-- requires: schemas/dashboard_public/tables/group_locations/columns/group_id/column

BEGIN;
CREATE INDEX group_locations_group_id_idx ON "dashboard_public".group_locations (group_id);
COMMIT;
