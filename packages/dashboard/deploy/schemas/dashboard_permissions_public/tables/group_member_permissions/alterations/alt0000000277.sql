-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/alterations/alt0000000277 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".group_member_permissions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
