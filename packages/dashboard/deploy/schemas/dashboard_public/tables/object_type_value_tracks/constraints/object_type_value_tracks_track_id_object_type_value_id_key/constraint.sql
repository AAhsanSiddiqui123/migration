-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_track_id_object_type_value_id_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks
    ADD CONSTRAINT object_type_value_tracks_track_id_object_type_value_id_key UNIQUE (track_id,object_type_value_id);
COMMIT;
