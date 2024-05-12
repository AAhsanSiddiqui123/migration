-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_is_private_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_is_private_idx;
COMMIT;  

