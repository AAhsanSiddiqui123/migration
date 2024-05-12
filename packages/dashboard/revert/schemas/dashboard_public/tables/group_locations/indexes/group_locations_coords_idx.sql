-- Revert: schemas/dashboard_public/tables/group_locations/indexes/group_locations_coords_idx from pg

BEGIN;
DROP INDEX "dashboard_public".group_locations_coords_idx;
COMMIT;  

