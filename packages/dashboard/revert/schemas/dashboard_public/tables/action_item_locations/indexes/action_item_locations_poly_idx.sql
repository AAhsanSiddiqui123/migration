-- Revert: schemas/dashboard_public/tables/action_item_locations/indexes/action_item_locations_poly_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_item_locations_poly_idx;
COMMIT;  

