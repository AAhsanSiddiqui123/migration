-- Revert: schemas/dashboard_public/tables/objects/indexes/objects_track_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".objects_track_id_idx;
COMMIT;  

