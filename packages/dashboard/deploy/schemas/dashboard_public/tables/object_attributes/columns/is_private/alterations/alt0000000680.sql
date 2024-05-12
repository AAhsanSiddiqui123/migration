-- Deploy: schemas/dashboard_public/tables/object_attributes/columns/is_private/alterations/alt0000000680 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/object_attributes/columns/is_private/column

BEGIN;

ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN is_private SET NOT NULL;
COMMIT;
