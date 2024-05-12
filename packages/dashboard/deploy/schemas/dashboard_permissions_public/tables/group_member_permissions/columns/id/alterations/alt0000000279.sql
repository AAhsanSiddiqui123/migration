-- Deploy: schemas/dashboard_permissions_public/tables/group_member_permissions/columns/id/alterations/alt0000000279 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/table
-- requires: schemas/dashboard_permissions_public/tables/group_member_permissions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_permissions_public".group_member_permissions 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
