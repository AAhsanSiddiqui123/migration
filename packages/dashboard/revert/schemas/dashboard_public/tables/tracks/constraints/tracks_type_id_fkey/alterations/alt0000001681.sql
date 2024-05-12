-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_type_id_fkey/alterations/alt0000001681 from pg

BEGIN;
COMMENT ON CONSTRAINT tracks_type_id_fkey ON "dashboard_public".tracks IS NULL;
COMMIT;  

