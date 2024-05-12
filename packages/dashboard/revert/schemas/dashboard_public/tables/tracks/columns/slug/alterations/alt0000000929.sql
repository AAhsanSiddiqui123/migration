-- Revert: schemas/dashboard_public/tables/tracks/columns/slug/alterations/alt0000000929 from pg

BEGIN;
ALTER TABLE "dashboard_public".tracks DROP CONSTRAINT tracks_slug_chk;
COMMIT;  

