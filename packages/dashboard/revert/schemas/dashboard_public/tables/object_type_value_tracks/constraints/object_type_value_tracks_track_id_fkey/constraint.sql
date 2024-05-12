-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_track_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_type_value_tracks 
    DROP CONSTRAINT object_type_value_tracks_track_id_fkey;

COMMIT;  

