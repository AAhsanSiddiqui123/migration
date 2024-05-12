-- Revert: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_object_id_object_type_attribute_id_key/alterations/alt0000000691 from pg

BEGIN;
COMMENT ON CONSTRAINT object_attributes_object_id_object_type_attribute_id_key ON "dashboard_public".object_attributes IS NULL;
COMMIT;  

