-- Verify: schemas/dashboard_public/tables/object_type_value_tracks/triggers/_000000000_ensure_update_track_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_update_track_id');
COMMIT;  

