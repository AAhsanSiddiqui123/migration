-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_tags_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_tags_idx;
COMMIT;  

