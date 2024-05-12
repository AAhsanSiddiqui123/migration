-- Revert: schemas/dashboard_public/tables/action_items/indexes/action_items_poly_idx from pg

BEGIN;
DROP INDEX "dashboard_public".action_items_poly_idx;
COMMIT;  

