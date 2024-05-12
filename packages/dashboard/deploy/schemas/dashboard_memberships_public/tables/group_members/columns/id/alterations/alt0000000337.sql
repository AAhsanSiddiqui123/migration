-- Deploy: schemas/dashboard_memberships_public/tables/group_members/columns/id/alterations/alt0000000337 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_members/table
-- requires: schemas/dashboard_memberships_public/tables/group_members/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_members 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
