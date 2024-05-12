-- Revert: schemas/dashboard_public/tables/object_type_attributes/triggers/object_type_attributes_object_type_id_immutable_tg from pg

BEGIN;
DROP TRIGGER object_type_attributes_object_type_id_immutable_tg ON "dashboard_public".object_type_attributes;
COMMIT;  

