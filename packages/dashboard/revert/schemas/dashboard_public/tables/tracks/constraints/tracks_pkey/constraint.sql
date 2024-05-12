-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    DROP CONSTRAINT tracks_pkey;

COMMIT;  

