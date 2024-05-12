-- Verify: schemas/dashboard_public/tables/object_type_value_tracks/indexes/object_type_value_tracks_track_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.object_type_value_tracks', 'object_type_value_tracks_track_id_idx');
COMMIT;  

