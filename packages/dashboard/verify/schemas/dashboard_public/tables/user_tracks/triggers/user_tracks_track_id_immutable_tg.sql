-- Verify: schemas/dashboard_public/tables/user_tracks/triggers/user_tracks_track_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('dashboard_public.user_tracks_track_id_immutable_tg');
COMMIT;  

