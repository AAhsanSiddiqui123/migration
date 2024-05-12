-- Deploy: schemas/dashboard_public/tables/track_locations/constraints/track_locations_track_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/track_locations/table
-- requires: schemas/dashboard_public/tables/tracks/columns/id/column
-- requires: schemas/dashboard_public/tables/track_locations/columns/track_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_locations 
    ADD CONSTRAINT track_locations_track_id_fkey 
    FOREIGN KEY (track_id)
    REFERENCES "dashboard_public".tracks (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
