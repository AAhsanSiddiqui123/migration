-- Deploy: schemas/dashboard_public/tables/object_records/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_records/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".object_records TO authenticated;
COMMIT;
