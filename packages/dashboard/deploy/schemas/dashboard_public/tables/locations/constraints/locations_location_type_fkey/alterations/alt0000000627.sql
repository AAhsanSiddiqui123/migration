-- Deploy: schemas/dashboard_public/tables/locations/constraints/locations_location_type_fkey/alterations/alt0000000627 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/constraints/locations_location_type_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT locations_location_type_fkey ON "dashboard_public".locations IS E'@omit manyToMany';
COMMIT;
