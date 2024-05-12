-- Revert: schemas/dashboard_public/tables/user_tracks/triggers/user_tracks_owner_id_immutable_tg from pg

BEGIN;
DROP TRIGGER user_tracks_owner_id_immutable_tg ON "dashboard_public".user_tracks;
COMMIT;  

