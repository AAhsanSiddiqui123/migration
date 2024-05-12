-- Deploy: schemas/dashboard_public/tables/object_type_values/columns/id/alterations/alt0000000671 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
