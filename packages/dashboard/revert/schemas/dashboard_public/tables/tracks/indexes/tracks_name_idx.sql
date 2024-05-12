-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_name_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_name_idx;
COMMIT;  

