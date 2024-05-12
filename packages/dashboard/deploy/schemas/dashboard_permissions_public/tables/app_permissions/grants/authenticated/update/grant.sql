-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_permissions_public".app_permissions TO authenticated;
COMMIT;
