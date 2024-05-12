-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table

BEGIN;

ALTER TABLE "dashboard_permissions_public".group_member_permissions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
