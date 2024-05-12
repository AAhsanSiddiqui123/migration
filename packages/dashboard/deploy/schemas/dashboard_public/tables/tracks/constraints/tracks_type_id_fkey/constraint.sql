-- Deploy: schemas/dashboard_public/tables/tracks/constraints/tracks_type_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/track_types/table
-- requires: schemas/dashboard_public/tables/track_types/columns/id/column
-- requires: schemas/dashboard_public/tables/tracks/columns/type_id/column

BEGIN;

ALTER TABLE "dashboard_public".tracks 
    ADD CONSTRAINT tracks_type_id_fkey 
    FOREIGN KEY (type_id)
    REFERENCES "dashboard_public".track_types (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
