-- Deploy: schemas/dashboard_public/tables/object_type_values/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_values/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".object_type_values TO authenticated;
COMMIT;
