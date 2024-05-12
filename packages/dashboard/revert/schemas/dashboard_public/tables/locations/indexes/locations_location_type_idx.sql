-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_location_type_idx from pg

BEGIN;
DROP INDEX "dashboard_public".locations_location_type_idx;
COMMIT;  

