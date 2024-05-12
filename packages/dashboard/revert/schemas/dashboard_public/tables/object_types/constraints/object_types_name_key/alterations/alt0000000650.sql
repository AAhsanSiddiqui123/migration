-- Revert: schemas/dashboard_public/tables/object_types/constraints/object_types_name_key/alterations/alt0000000650 from pg

BEGIN;
COMMENT ON CONSTRAINT object_types_name_key ON "dashboard_public".object_types IS NULL;
COMMIT;  

