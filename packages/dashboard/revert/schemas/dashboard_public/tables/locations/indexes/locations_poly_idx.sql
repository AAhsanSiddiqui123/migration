-- Revert: schemas/dashboard_public/tables/locations/indexes/locations_poly_idx from pg

BEGIN;
DROP INDEX "dashboard_public".locations_poly_idx;
COMMIT;  

