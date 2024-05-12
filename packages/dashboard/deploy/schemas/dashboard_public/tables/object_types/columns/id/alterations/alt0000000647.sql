-- Deploy: schemas/dashboard_public/tables/object_types/columns/id/alterations/alt0000000647 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_types/table
-- requires: schemas/dashboard_public/tables/object_types/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".object_types 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
