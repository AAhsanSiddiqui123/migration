-- Deploy: schemas/dashboard_public/tables/locations/constraints/locations_location_type_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/locations/table
-- requires: schemas/dashboard_public/tables/location_types/table
-- requires: schemas/dashboard_public/tables/location_types/columns/id/column
-- requires: schemas/dashboard_public/tables/locations/columns/location_type/column

BEGIN;

ALTER TABLE "dashboard_public".locations 
    ADD CONSTRAINT locations_location_type_fkey 
    FOREIGN KEY (location_type)
    REFERENCES "dashboard_public".location_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
