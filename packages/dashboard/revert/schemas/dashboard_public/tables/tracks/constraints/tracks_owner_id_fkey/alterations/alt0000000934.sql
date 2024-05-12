-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_owner_id_fkey/alterations/alt0000000934 from pg

BEGIN;
COMMENT ON CONSTRAINT tracks_owner_id_fkey ON "dashboard_public".tracks IS NULL;
COMMIT;  

