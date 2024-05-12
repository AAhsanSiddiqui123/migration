-- Deploy: schemas/dashboard_public/tables/object_types/constraints/object_types_name_key/alterations/alt0000000650 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/constraints/object_types_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT object_types_name_key ON "dashboard_public".object_types IS NULL;
COMMIT;
