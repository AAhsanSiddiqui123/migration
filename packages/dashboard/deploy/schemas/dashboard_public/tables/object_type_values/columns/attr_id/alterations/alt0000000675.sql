-- Deploy: schemas/dashboard_public/tables/object_type_values/columns/attr_id/alterations/alt0000000675 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/attr_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN attr_id SET NOT NULL;
COMMIT;
