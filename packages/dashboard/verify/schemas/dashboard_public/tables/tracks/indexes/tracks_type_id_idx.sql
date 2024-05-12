-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_type_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_type_id_idx');
COMMIT;  

