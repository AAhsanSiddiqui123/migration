-- Deploy: schemas/dashboard_public/tables/object_type_attributes/columns/is_required/alterations/alt0000000664 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table
-- requires: schemas/dashboard_public/tables/object_type_attributes/columns/is_required/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_attributes 
    ALTER COLUMN is_required SET DEFAULT false;
COMMIT;
