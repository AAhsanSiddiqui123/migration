-- Deploy: schemas/dashboard_public/tables/objects/constraints/objects_track_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/objects/table
-- requires: schemas/dashboard_public/tables/tracks/columns/id/column
-- requires: schemas/dashboard_public/tables/objects/columns/track_id/column

BEGIN;

ALTER TABLE "dashboard_public".objects 
    ADD CONSTRAINT objects_track_id_fkey 
    FOREIGN KEY (track_id)
    REFERENCES "dashboard_public".tracks (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
