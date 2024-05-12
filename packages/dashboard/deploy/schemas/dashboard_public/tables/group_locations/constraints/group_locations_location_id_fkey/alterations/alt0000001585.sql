-- Deploy: schemas/dashboard_public/tables/group_locations/constraints/group_locations_location_id_fkey/alterations/alt0000001585 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_locations/constraints/group_locations_location_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT group_locations_location_id_fkey ON "dashboard_public".group_locations IS E'@omit manyToMany';
COMMIT;
