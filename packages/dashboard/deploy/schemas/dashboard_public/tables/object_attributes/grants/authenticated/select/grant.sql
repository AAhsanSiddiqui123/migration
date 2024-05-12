-- Deploy: schemas/dashboard_public/tables/object_attributes/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_attributes/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".object_attributes TO authenticated;
COMMIT;
