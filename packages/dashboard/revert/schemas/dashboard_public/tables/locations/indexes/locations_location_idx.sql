-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_location_idx from pg

BEGIN;
DROP INDEX "dashboard_public".locations_location_idx;
COMMIT;  

