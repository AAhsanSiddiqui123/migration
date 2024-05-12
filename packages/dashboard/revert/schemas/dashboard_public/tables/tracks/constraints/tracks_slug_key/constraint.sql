-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_slug_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    DROP CONSTRAINT tracks_slug_key;

COMMIT;  

