-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_is_published_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_is_published_idx');
COMMIT;  

