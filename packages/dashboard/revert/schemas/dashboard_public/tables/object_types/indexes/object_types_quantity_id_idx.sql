-- Revert: schemas/dashboard_public/tables/object_types/indexes/object_types_quantity_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_types_quantity_id_idx;
COMMIT;  

