-- Revert: schemas/dashboard_public/tables/units/indexes/units_quantity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".units_quantity_id_idx;
COMMIT;  

