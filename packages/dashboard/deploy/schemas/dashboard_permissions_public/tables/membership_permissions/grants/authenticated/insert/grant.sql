-- Deploy: schemas/dashboard_permissions_public/tables/membership_permissions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_permissions_public".membership_permissions TO authenticated;
COMMIT;
