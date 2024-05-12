-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_is_published_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_is_published_idx;
COMMIT;  

