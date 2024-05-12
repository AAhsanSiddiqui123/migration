-- Deploy: schemas/dashboard_public/tables/object_attributes/columns/object_id/alterations/alt0000000687 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table
-- requires: schemas/dashboard_public/tables/object_attributes/columns/object_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_attributes 
    ALTER COLUMN object_id SET NOT NULL;
COMMIT;
