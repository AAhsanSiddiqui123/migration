-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_bounds_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_bounds_idx;
COMMIT;  

