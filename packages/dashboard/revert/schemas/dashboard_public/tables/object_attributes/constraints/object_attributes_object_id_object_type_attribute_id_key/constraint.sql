-- Revert: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_object_id_object_type_attribute_id_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".object_attributes 
    DROP CONSTRAINT object_attributes_object_id_object_type_attribute_id_key;

COMMIT;  

