-- Revert: schemas/dashboard_public/tables/object_type_values/constraints/object_type_values_attr_id_fkey/alterations/alt0000000676 from pg

BEGIN;
COMMENT ON CONSTRAINT object_type_values_attr_id_fkey ON "dashboard_public".object_type_values IS NULL;
COMMIT;  

