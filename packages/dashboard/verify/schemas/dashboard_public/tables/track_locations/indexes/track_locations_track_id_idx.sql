-- Verify: schemas/dashboard_public/tables/track_locations/indexes/track_locations_track_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.track_locations', 'track_locations_track_id_idx');
COMMIT;  

