-- Verify: schemas/dashboard_public/tables/user_tracks/indexes/user_tracks_owner_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_tracks', 'user_tracks_owner_id_idx');
COMMIT;  

