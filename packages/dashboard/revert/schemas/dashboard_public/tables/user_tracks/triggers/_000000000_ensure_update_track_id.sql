-- Revert: schemas/dashboard_public/tables/user_tracks/triggers/_000000000_ensure_update_track_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_update_track_id ON "dashboard_public".user_tracks;
COMMIT;  

