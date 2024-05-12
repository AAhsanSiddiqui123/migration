-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_track_id_object_type_value_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks 
    DROP CONSTRAINT object_type_value_tracks_track_id_object_type_value_id_key;

COMMIT;  

