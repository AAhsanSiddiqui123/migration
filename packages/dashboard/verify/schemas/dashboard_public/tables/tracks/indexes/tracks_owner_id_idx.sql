-- Verify: schemas/dashboard_public/tables/tracks/indexes/tracks_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.tracks', 'tracks_owner_id_idx');
COMMIT;  

