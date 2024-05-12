-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    DROP CONSTRAINT tracks_owner_id_fkey;

COMMIT;  

