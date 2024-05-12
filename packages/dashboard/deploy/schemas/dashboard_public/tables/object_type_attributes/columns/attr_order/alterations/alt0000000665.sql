-- Deploy: schemas/dashboard_public/tables/object_type_attributes/columns/attr_order/alterations/alt0000000665 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/columns/attr_order/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN attr_order SET DEFAULT 0;
COMMIT;
