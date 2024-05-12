-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_permissions_public".group_member_permission_defaults TO authenticated;
COMMIT;
