-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_data_tags_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_data_tags_idx');
COMMIT;  

