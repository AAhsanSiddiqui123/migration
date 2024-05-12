-- Deploy: schemas/dashboard_public/tables/object_records/alterations/alt0000000692 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;

ALTER TABLE "dashboard_public".object_records
    DISABLE ROW LEVEL SECURITY;
COMMIT;
