-- Deploy: schemas/dashboard_public/tables/object_records/constraints/object_records_object_type_attribute_id_fkey/alterations/alt0000000705 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/constraints/object_records_object_type_attribute_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT object_records_object_type_attribute_id_fkey ON "dashboard_public".object_records IS E'@omit manyToMany';
COMMIT;
