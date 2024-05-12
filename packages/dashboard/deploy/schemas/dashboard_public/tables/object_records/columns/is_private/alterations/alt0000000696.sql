-- Deploy: schemas/dashboard_public/tables/object_records/columns/is_private/alterations/alt0000000696 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_public/tables/object_records/columns/is_private/column

BEGIN;

ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN is_private SET DEFAULT false;
COMMIT;
