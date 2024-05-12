-- Deploy: schemas/dashboard_public/tables/track_locations/constraints/track_locations_location_id_fkey/alterations/alt0000001623 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/constraints/track_locations_location_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT track_locations_location_id_fkey ON "dashboard_public".track_locations IS E'@omit manyToMany';
COMMIT;
