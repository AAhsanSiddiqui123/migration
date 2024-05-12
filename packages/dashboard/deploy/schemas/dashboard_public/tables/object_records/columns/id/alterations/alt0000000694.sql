-- Deploy: schemas/dashboard_public/tables/object_records/columns/id/alterations/alt0000000694 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table
-- requires: schemas/dashboard_public/tables/object_records/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".object_records 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
