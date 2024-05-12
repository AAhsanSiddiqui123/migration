-- Deploy: schemas/dashboard_public/tables/object_types/constraints/object_types_quantity_id_fkey/alterations/alt0000000649 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/constraints/object_types_quantity_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT object_types_quantity_id_fkey ON "dashboard_public".object_types IS E'@omit manyToMany';
COMMIT;
