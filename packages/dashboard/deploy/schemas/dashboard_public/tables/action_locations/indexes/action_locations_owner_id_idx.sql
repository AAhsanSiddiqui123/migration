-- Deploy: schemas/dashboard_public/tables/action_locations/indexes/action_locations_owner_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_locations/table
-- requires: schemas/dashboard_public/tables/action_locations/columns/owner_id/column

BEGIN;
CREATE INDEX action_locations_owner_id_idx ON "dashboard_public".action_locations (owner_id);
COMMIT;
