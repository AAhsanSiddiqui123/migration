-- Revert: schemas/dashboard_public/tables/object_type_attributes/constraints/object_type_attributes_object_type_id_fkey/alterations/alt0000000667 from pg

BEGIN;
COMMENT ON CONSTRAINT object_type_attributes_object_type_id_fkey ON "dashboard_public".object_type_attributes IS NULL;
COMMIT;  

