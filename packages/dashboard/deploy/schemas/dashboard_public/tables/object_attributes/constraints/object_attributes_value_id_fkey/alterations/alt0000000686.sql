-- Deploy: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_value_id_fkey/alterations/alt0000000686 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_value_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT object_attributes_value_id_fkey ON "dashboard_public".object_attributes IS E'@omit manyToMany';
COMMIT;
