-- Revert: schemas/dashboard_public/tables/tracks/constraints/tracks_slug_key/alterations/alt0000000935 from pg

BEGIN;
COMMENT ON CONSTRAINT tracks_slug_key ON "dashboard_public".tracks IS NULL;
COMMIT;  

