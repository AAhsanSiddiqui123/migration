-- Revert: schemas/dashboard_public/tables/user_tracks/constraints/user_tracks_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks 
    DROP CONSTRAINT user_tracks_owner_id_fkey;

COMMIT;  

