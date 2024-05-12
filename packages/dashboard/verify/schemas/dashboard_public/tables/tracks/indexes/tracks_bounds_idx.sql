-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_bounds_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_bounds_idx');
COMMIT;  

