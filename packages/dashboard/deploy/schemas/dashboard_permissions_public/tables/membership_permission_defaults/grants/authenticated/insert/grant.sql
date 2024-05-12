-- Deploy: schemas/dashboard_permissions_public/tables/membership_permission_defaults/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permission_defaults/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_permissions_public".membership_permission_defaults TO authenticated;
COMMIT;
