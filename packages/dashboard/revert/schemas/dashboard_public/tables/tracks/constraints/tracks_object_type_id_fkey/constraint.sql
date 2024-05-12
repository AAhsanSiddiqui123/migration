-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_object_type_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks 
    DROP CONSTRAINT tracks_object_type_id_fkey;

COMMIT;  

