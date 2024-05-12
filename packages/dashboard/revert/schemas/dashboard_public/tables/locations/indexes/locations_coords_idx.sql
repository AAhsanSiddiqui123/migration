-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_coords_idx from pg

BEGIN;
DROP INDEX "dashboard_public".locations_coords_idx;
COMMIT;  

