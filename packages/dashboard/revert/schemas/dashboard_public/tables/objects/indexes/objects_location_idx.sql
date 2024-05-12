-- Revert: schemas/dashboard_public/tables/objects/indexes/objects_location_idx from pg

BEGIN;
DROP INDEX "dashboard_public".objects_location_idx;
COMMIT;  

