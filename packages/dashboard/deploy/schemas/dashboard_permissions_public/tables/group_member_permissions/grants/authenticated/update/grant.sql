-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_permissions_public".group_member_permissions TO authenticated;
COMMIT;
