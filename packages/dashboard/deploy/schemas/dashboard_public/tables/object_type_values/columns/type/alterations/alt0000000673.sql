-- Deploy: schemas/dashboard_public/tables/object_type_values/columns/type/alterations/alt0000000673 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/type/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN type SET DEFAULT 'text';
COMMIT;
