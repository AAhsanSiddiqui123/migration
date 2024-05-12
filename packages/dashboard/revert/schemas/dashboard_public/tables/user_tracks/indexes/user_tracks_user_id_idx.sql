-- Revert: schemas/dashboard_public/tables/user_tracks/indexes/user_tracks_user_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_tracks_user_id_idx;
COMMIT;  

