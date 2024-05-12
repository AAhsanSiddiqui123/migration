-- Deploy: schemas/dashboard_memberships_public/tables/group_members/columns/is_admin/alterations/alt0000000338 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/is_admin/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members 
    ALTER COLUMN is_admin SET NOT NULL;
COMMIT;
