-- Revert: schemas/dashboard_public/tables/user_tracks/constraints/user_tracks_user_id_fkey/alterations/alt0000000956 from pg

BEGIN;
COMMENT ON CONSTRAINT user_tracks_user_id_fkey ON "dashboard_public".user_tracks IS NULL;
COMMIT;  

