-- Deploy: schemas/dashboard_public/tables/user_locations/constraints/user_locations_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_locations/table
-- requires: schemas/dashboard_public/tables/user_location_types/table
-- requires: schemas/dashboard_public/tables/user_location_types/columns/id/column
-- requires: schemas/dashboard_public/tables/user_locations/columns/type_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_locations 
    ADD CONSTRAINT user_locations_type_id_fkey 
    FOREIGN KEY (type_id)
    REFERENCES "dashboard_public".user_location_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
