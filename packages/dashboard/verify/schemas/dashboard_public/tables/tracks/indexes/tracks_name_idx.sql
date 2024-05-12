-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_name_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_name_idx');
COMMIT;  

