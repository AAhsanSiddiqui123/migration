-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/alterations/alt0000000284 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permission_defaults/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".group_member_permission_defaults
    DISABLE ROW LEVEL SECURITY;
COMMIT;
