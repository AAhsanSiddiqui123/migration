-- Revert: schemas/dashboard_public/tables/object_type_values/triggers/object_type_values_attr_id_immutable_tg from pg

BEGIN;
DROP TRIGGER object_type_values_attr_id_immutable_tg ON "dashboard_public".object_type_values;
COMMIT;  

