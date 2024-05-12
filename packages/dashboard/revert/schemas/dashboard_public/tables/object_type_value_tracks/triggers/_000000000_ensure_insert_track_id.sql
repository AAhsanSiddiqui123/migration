-- Revert: schemas/dashboard_public/tables/object_type_value_tracks/triggers/_000000000_ensure_insert_track_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_track_id ON "dashboard_public".object_type_value_tracks;
COMMIT;  

