-- Revert: schemas/dashboard_public/tables/track_locations/indexes/track_locations_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".track_locations_owner_id_idx;
COMMIT;  

