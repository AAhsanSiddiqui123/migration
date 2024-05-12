-- Revert: schemas/dashboard_public/tables/object_type_values/indexes/object_type_values_attr_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".object_type_values_attr_id_idx;
COMMIT;  

