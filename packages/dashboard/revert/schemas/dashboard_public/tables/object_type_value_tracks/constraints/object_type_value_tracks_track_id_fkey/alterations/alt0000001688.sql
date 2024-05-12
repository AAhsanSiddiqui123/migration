-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/constraints/object_type_value_tracks_track_id_fkey/alterations/alt0000001688 from pg

BEGIN;
COMMENT ON CONSTRAINT object_type_value_tracks_track_id_fkey ON "dashboard_public".object_type_value_tracks IS NULL;
COMMIT;  

