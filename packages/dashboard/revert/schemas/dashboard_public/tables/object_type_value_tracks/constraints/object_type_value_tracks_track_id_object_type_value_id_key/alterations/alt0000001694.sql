-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_track_id_object_type_value_id_key/alterations/alt0000001694 from pg

BEGIN;
COMMENT ON CONSTRAINT object_type_value_tracks_track_id_object_type_value_id_key ON "dashboard_public".object_type_value_tracks IS NULL;
COMMIT;  

