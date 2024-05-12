-- Revert: schemas/dashboard_public/tables/object_type_attributes/indexes/object_type_attributes_unit_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_type_attributes_unit_id_idx;
COMMIT;  

