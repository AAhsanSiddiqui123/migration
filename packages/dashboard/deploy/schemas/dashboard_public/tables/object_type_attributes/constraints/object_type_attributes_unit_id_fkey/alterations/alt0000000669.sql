-- Deploy: schemas/dashboard_public/tables/object_type_attributes/constraints/object_type_attributes_unit_id_fkey/alterations/alt0000000669 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/constraints/object_type_attributes_unit_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT object_type_attributes_unit_id_fkey ON "dashboard_public".object_type_attributes IS E'@omit manyToMany';
COMMIT;
