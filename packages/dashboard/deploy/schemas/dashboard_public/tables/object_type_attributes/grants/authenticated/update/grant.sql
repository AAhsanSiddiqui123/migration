-- Deploy: schemas/dashboard_public/tables/object_type_attributes/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_attributes/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".object_type_attributes TO authenticated;
COMMIT;
