-- Deploy: schemas/dashboard_public/tables/track_locations/constraints/track_locations_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/users/columns/id/column
-- requires: schemas/dashboard_public/tables/track_locations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_locations 
    ADD CONSTRAINT track_locations_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "dashboard_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
