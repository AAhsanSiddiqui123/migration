-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/columns/id/alterations/alt0000000301 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/columns/id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
