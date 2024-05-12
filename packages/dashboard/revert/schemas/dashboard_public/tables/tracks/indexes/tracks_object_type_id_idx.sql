-- Revert: schemas/dashboard_public/tables/tracks/indexes/tracks_object_type_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".tracks_object_type_id_idx;
COMMIT;  

