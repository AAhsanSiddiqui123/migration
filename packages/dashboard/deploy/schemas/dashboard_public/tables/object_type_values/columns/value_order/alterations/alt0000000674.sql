-- Deploy: schemas/dashboard_public/tables/object_type_values/columns/value_order/alterations/alt0000000674 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table
-- requires: schemas/dashboard_public/tables/object_type_values/columns/value_order/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_values 
    ALTER COLUMN value_order SET DEFAULT 0;
COMMIT;
